resource "hcloud_placement_group" "pg" {
  name = var.name
  type = var.type
}

terraform {
    required_providers {
        hcloud = {
            source = "hetznercloud/hcloud"
            version = ">=1.44.0"
        }
    }
}
