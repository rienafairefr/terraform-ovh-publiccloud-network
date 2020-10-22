terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
    }
    ovh = {
      source = "ovh/ovh"
    }
  }
  required_version = ">= 0.13"
}
