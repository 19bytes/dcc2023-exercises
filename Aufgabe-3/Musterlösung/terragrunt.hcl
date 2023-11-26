generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
terraform {
    required_providers {
        hcloud = {
            source = "hetznercloud/hcloud"
            version = ">=1.44.0"
        }
    }
}

variable "hcloud_token" {
    type = string
    default = ""
    sensitive = true
}
provider "hcloud" {
    token = var.hcloud_token
}
EOF
}
