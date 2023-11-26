module "dev_placement_group" {
    source = "../modules/placement-group"
    name = "MYPREFIX_dev_placementgroup"   
}

module "dev_server" {
    source = "../modules/server"
    name = "MYPREFIX-dev-server"
    image = "debian-12"
    placement_group_id = module.dev_placement_group.id
}
