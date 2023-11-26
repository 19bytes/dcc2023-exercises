# Include the root `terragrunt.hcl` configuration. The root configuration contains settings that are common across all
# components and environments, such as how to configure remote state.
include "root" {
  path = find_in_parent_folders()
  expose = true
}

terraform {
    source = "../../modules/server"
}

dependency "dev_pg" {
  config_path = "../placement-group"
  mock_outputs = {
    id = "4711"
  }
  mock_outputs_allowed_terraform_commands = ["validate", "plan"]
}

inputs = {
  name = "MYPREFIX-dev-server"
  image = "debian-12"
  placement_group_id = dependency.dev_pg.outputs.id
}
