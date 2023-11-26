module "qa_placement_group" {
    source = "../modules/placement-group"
    name = "MYPREFIX_qa_placementgroup"   
}

module "qa_server" {
    source = "../modules/server"
    name = "MYPREFIX-qa-server"
    image = "ubuntu-22.04"
    placement_group_id = module.qa_placement_group.id
}
