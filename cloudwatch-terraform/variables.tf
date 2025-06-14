variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "aws_account_id" {
  type        = string
  description = "AWS Account ID"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster Name"
}

variable "oidc_provider" {
  type        = string
  description = "OIDC provider URL without https://"
}

