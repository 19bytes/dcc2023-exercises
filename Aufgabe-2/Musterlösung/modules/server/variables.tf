variable "name" {
  description = "The name identifying the server."
}

variable "server_type" {
  description = "The type of the server."
  default = "cx11"
}

variable "image" {
  description = "The OS image used in the server."
  default = "ubuntu-22.04"
}

variable "placement_group_id" {
  description = "Placement Group ID the server added to on creation."
  nullable = true
  default = null
}
