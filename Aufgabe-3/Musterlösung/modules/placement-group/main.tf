resource "hcloud_placement_group" "pg" {
  name = var.name
  type = var.type
}
