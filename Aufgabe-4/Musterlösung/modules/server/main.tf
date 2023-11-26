resource "hcloud_server" "vm" {
  name        = var.name
  image       = var.image
  server_type = var.server_type
  placement_group_id = var.placement_group_id
}
