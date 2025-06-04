variable "cluster_name" {
  default = "interior-app-eks"
}

variable "vpc_id" {
  default = "vpc-06d8efa5574044b7d"
}

variable "subnet_ids" {
  default = [
    "subnet-072306895e53d0320",  # ap-south-1a
    "subnet-099bb50e17c452a9b"  # ap-south-1b
    
  ]
}
