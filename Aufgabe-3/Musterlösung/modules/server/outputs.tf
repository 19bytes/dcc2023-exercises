output "id" {
  description = "Unique ID of the server."
  value       = hcloud_server.vm.id
}

output "datacenter" {
  description = "The datacenter name."
  value       = hcloud_server.vm.datacenter
}

output "ipv4_address" {
  description = "The IPv4 address."
  value       = hcloud_server.vm.ipv4_address
}

output "ipv6_address" {
  description = "The IPv6 address."
  value       = hcloud_server.vm.ipv6_address
}
