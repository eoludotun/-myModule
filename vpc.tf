module "vpc" {
  source = "github.com/eoludotun/-myModule/module"

  # source      = "/Users/ebenezeroludotun/CODE/RDS/jenkinfiles/BEN-AWS-KUBERNETES/aws-terraform-k8s-GOOD-AND-WORKING/module"

  name        = "aws-kubernetes"
  environment = "development"
  region      = "${var.region}"
  vpc_cidr    = "${var.vpc_cidr}"

  # public_subnets = ["10.0.1.0/24"]

  public_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets     = ["10.0.10.0/24", "10.0.20.0/24"]
  enable_dhcp_options = true
  # dhcp_options_domain_name = "${local.domain_name}"
  # map_public_ip_on_launch  = true
  enable_nat_gateway = true
  multi_nat_gateway = true
}
