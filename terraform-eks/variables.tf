variable "cluster_name" {
  default = "interior-app-eks"
}

variable "vpc_id" {
  default = "vpc-09b909a4583503277"
}

variable "subnet_ids" {
  default = [
    "subnet-0ac202668d055d0b9",  # ap-south-1a
    "subnet-02a56f681bb728d0f"  # ap-south-1b
    
  ]
}
