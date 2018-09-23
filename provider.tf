provider "aws" {
  region = "${var.region}"
}

data "terraform_remote_state" "ograb" {
  backend = "s3"

  config {
    bucket = "ograb-vpc"
    key    = "terraform.state"
    region = "eu-west-1"
  }
}
