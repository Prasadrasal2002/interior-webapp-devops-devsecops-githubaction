variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_azs" {
  description = "List of availability zones for public subnets"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "private_az" {
  description = "Availability zone for private subnet"
  type        = string
  default     = "ap-south-1b"
}

variable "vpc_name" {
  description = "Name tag for VPC"
  type        = string
  default     = "interior-vpc"
}
