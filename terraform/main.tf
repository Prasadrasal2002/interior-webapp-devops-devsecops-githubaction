module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block        = var.vpc_cidr_block
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidr   = var.private_subnet_cidr
  public_azs            = var.public_azs
  private_az            = var.private_az
  vpc_name              = var.vpc_name
}

module "iam" {
  source = "./modules/iam"
}

module "security_group" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  for_each = {
    subnet1 = "subnet-0ac202668d055d0b9"
    subnet2 = "subnet-0b65380fdd73d5351"
  }

  source = "./modules/ec2"
  subnet_id = each.value
  security_group_ids = ["sg-0f886bd2508cfb265"]
  iam_role = "intern-ec2-role"
  
}