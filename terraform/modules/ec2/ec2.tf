resource "aws_iam_instance_profile" "ec2_profile" {
  name = var.instance_profile_name
  role = var.iam_role
}

resource "aws_instance" "web" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true
  key_name                    = var.key_name

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = var.instance_name
  }
}
