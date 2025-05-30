variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0e35ddab05955cf57"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
  default     = "lab1"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "interior-ec2"
}

variable "iam_role" {
  description = "IAM Role name for EC2 instance profile"
  type        = string
}

variable "instance_profile_name" {
  description = "Unique name for the IAM instance profile"
  type        = string
  default     = "intern-ec2-profile"
}
