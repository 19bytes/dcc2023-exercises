output "name" {
  description = "The placement group name"
  value       = hcloud_placement_group.pg.name
}

output "id" {
  description = "The placement group id"
  value       = hcloud_placement_group.pg.id
}