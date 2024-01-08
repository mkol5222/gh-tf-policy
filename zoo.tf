terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_pet" "example" {
  # Configuration options
length = 4
}

locals {
    # get json 
    zooJson = jsondecode(file("${path.module}/policy/policy.json"))

    # get all users
    animals = [for animal in local.zooJson.zoo : animal.name]
}

output "users" {
    value = local.animals
}
resource "random_pet" "zoo_animals" {

  for_each = toset(local.zooJson.zoo)
  keepers = {
    name = each.value.name
  }
  length = each.value.len
}
