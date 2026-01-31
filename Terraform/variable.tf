variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "django_cluster"
}

variable "ssh_ip" {
  description = "Public IP address allowed to SSH into nodes (with /32)"
  type        = string
}
