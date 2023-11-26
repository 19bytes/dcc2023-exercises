# Include the root `terragrunt.hcl` configuration. The root configuration contains settings that are common across all
# components and environments, such as how to configure remote state.
include "root" {
  path = find_in_parent_folders()
  expose = true
}

terraform {
    source = "${get_parent_terragrunt_dir()}/modules/placement-group"
}

inputs = {
  name = "${include.root.inputs.base_prefix}-${include.root.inputs.environment}-placementgroup"
  image = "debian-12"
}
