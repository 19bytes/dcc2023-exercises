variable "name" {
  description = "Name of the Placement Group."
  nullable = true
}

variable "type" {
  description = "The type of the placement group."
  default = "spread"
}
