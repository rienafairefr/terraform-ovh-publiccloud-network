provider "openstack" {
  version = "~> 1.3.0"
  region  = var.region
}

module "network" {
  #  source = "ovh/publiccloud-network/ovh"
  #  version = ">= 0.0.10"
  source = "../.."

  name               = "mysimplenetwork"
  cidr               = "10.0.0.0/16"
  region             = var.region
  public_subnets     = ["10.0.0.0/24"]
  private_subnets    = ["10.0.1.0/24"]
  enable_nat_gateway = true
  nat_as_bastion     = true
  ssh_public_keys    = [file("~/.ssh/id_rsa.pub")]

  metadata = {
    Terraform   = "true"
    Environment = "Dev"
  }
}
