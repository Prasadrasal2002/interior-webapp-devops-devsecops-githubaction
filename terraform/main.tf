# Call VPC Module
module "vpc" {
  source = "./modules/vpc"

  vpc_name           = "interior-vpc"
  vpc_cidr_block     = "10.0.0.0/16"

  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  public_azs          = ["ap-south-1a", "ap-south-1b"]

  private_subnet_cidr = "10.0.101.0/24"
  private_az          = "ap-south-1a"
}

# Call Security Group Module
module "security_group" {
  source = "./modules/sg"

  vpc_id         = module.vpc.vpc_id
  sg_name        = "web-sg"
  sg_description = "Allow HTTP and SSH"
  ssh_cidr       = ["0.0.0.0/0"]
  http_cidr      = ["0.0.0.0/0"]
}

# Create EC2 Instance in Public Subnet
resource "aws_instance" "web_server" {
  ami                    = "ami-0e35ddab05955cf57"  # Ubuntu AMI for ap-south-1
  instance_type          = "t3.medium"
  subnet_id              = element(module.vpc.public_subnet_ids, 0)
  vpc_security_group_ids = [module.security_group.security_group_id]
  key_name               = var.ec2_key_name  # Add this variable to your variables.tf

  tags = {
    Name = "WebServerInstance"
  }
}

# Outputs
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "ec2_instance_id" {
  value = aws_instance.web_server.id
}
