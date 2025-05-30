terraform {
  backend "s3" {
    bucket         = "interior-web-app-9866"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "interior-dynamodb-2025"
    encrypt        = true
  }
}
