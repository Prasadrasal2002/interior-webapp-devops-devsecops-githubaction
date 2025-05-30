variable "vpc_cidr_block" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "public_azs" {
  type = list(string)
}

variable "private_subnet_cidr" {
  type = string
}

variable "private_az" {
  type = string
}

variable "vpc_name" {
  type = string
}
