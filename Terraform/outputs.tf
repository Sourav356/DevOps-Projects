output "cluster_id" {
  description = "EKS Cluster ID"
  value       = aws_eks_cluster.django_cluster.id
}

output "cluster_endpoint" {
  description = "EKS Cluster endpoint"
  value       = aws_eks_cluster.django_cluster.endpoint
}

output "cluster_certificate_authority_data" {
  description = "EKS Cluster CA data"
  value       = aws_eks_cluster.django_cluster.certificate_authority[0].data
}

output "node_group_id" {
  description = "EKS Node Group ID"
  value       = aws_eks_node_group.django_nodes.id
}

output "vpc_id" {
  value = aws_vpc.django_vpc.id
}

output "cluster_name" {
  value = aws_eks_cluster.django_cluster.name
}
