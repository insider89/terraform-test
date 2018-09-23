# terraform.tf

terraform {
  backend "s3" {
    bucket         = "ograbbucket"
    key            = "mybucket.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-lock"
  }
}