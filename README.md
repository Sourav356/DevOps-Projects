# Django + MySQL on AWS EKS & OpenShift

This repository documents the deployment of a **3‑tier application** (Django → MySQL → ALB) on **Amazon EKS**, with additional manifests for **OpenShift**. 
It covers infrastructure provisioning with Terraform, IAM roles, Kubernetes manifests, and database initialisation.

---

## 🚀 Architecture
- **Infrastructure**: VPC, subnets, route tables, security groups, IAM roles (Terraform).
- **Cluster**: Amazon EKS with managed node group.
- **Storage**: EBS CSI driver for persistent volumes.
- **Networking**: AWS Load Balancer Controller for ALB ingress.
- **Application**: Django backend + MySQL database.
- **Ingress**: ALB DNS endpoint for external access.
- **Multi‑Platform**: OpenShift YAMLs for portability across Kubernetes distributions.

---

## 📂 Repository Structure
├── demoP/
│   ├── demoapp/
│   ├── demoP/
│   ├── EKS_YAMLS/
│   │   ├── django_eks_yamls/
│   │   │   ├── django-configMap.yaml
│   │   │   ├── django-deployment.yaml
│   │   │   ├── django-ingress.yaml
│   │   │   ├── django-secret.yaml
│   │   │   └── django-service.yaml
│   │   ├── mysql_eks_yamls/
│   │   │   ├── mysql-secret.yaml
│   │   │   ├── mysql-service.yaml
│   │   │   ├── mysql-statefulset.yaml
│   │   │   ├── aws-lbc-sa.yaml
│   │   │   ├── ebs-csi-policy.json
│   │   │   ├── ebs-sa.yaml
│   │   │   ├── iam_policy.json
│   │   │   └── webhook-cert.yaml
│   ├── Openshift_YAMLS/
├── db.json
├── db.sqlite3
├── dockerfile
├── dump.sql
├── manage.py
├── requirements.txt
└── venv/

Code

---

## ⚙️ Deployment Steps

### 1. Provision Infrastructure
```bash
terraform init
terraform apply -auto-approve
```
2. Create IAM Roles
AmazonEKS_EBS_CSI_DriverRole (manual, console).

AmazonEKSLoadBalancerControllerRole (Terraform).

3. Apply Service Accounts
```bash
kubectl apply -f EKS_YAMLS/mysql_eks_yamls/ebs-sa.yaml
kubectl apply -f EKS_YAMLS/mysql_eks_yamls/aws-lbc-sa.yaml
```
4. Install Addons
```bash
aws eks create-addon --cluster-name django_cluster --addon-name aws-ebs-csi-driver --region ap-south-2
helm install aws-load-balancer-controller eks/aws-load-balancer-controller -n kube-system ...
```
5. Deploy Application
```bash
kubectl apply -f EKS_YAMLS/django_eks_yamls/
kubectl apply -f EKS_YAMLS/mysql_eks_yamls/
```
6. Initialize Database
```bash
kubectl cp dump.sql default/mysql-0:/tmp/dump.sql
kubectl exec -it mysql-0 -n default -- mysql -u root -p django_localhost < /tmp/dump.sql
```
7. Verify
```bash
kubectl get pods -n default
kubectl get ingress -n default
```
8. Access
``Code
http://<ALB-DNS>/drinks/
🔄 OpenShift Deployment
Openshift_YAMLS/ folder contains manifests adapted for OpenShift.

These YAMLs ensure portability of the Django + MySQL stack across Kubernetes distributions.

Key differences:

SecurityContext adjustments for OpenShift’s stricter defaults.

Route objects instead of Ingress for external exposure.

PersistentVolumeClaims aligned with OpenShift storage classes.

✅ Outcome
Django app accessible via ALB DNS on EKS.

MySQL data imported from local dump.

Multi‑platform deployment strategy with OpenShift manifests.
