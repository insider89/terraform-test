variable "account_name" {
  default = "ograb"
}

variable "region" {
  default = "eu-west-1"
}

variable "availability_zones" {
  type    = "list"
  default = ["a", "b", "c"]
}

variable "environment" {
  default = "dev"
}
