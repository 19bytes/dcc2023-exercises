# Include the root `terragrunt.hcl` configuration. The root configuration contains settings that are common across all
# components and environments, such as how to configure remote state.
include "root" {
  path = find_in_parent_folders()
  expose = true
}

terraform {
    source = "../../modules/placement-group"
}

inputs = {
  name = "MYPREFIX-qa-placementgroup"
  image = "debian-12"
}
