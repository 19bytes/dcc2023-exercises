locals {
  # Automatically load environment-level variables
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  # Automatically load environment-level variables
  common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
}

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

# ---------------------------------------------------------------------------------------------------------------------
# GLOBAL PARAMETERS
# These variables apply to all configurations in this subfolder. These are automatically merged into the child
# `terragrunt.hcl` config via the include block.
# ---------------------------------------------------------------------------------------------------------------------

# Configure root level variables that all resources can inherit. 
inputs = merge(
  local.common_vars.locals,
  local.environment_vars.locals,
)
