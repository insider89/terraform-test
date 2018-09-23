data "aws_ami" "ograb_ami" {
  most_recent = true

  filter {
    name   = "tag:name"
    values = ["centos-7-base"]
  }
}

module "ograb-dev" {
  source             = "git@github.com:insider89/terraform-modules.git/"
  environment        = "${var.environment}"
  min_size           = "1"
  max_size           = "1"
  availability_zones = "${formatlist("%s%s", var.region, var.availability_zones)}"
  public_subnets     = "${data.terraform_remote_state.ograb.vpc_public_subnets}"
  private_subnets    = "${data.terraform_remote_state.ograb.vpc_private_subnets}"
  vpc_id             = "${data.terraform_remote_state.ograb.vpc_id}"
  image_id           = "${data.aws_ami.ograb_ami.image_id}"
  key_name           = "ohrab"
}
