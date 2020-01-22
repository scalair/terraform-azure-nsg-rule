# vnet variables

variable "subscription" {
  description = "The azure subscription"
  type        = string
  default     = ""
}

variable "location" {
  description = "One of the Azure region for the resource provisioning"
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "Resource groupe name tha will contain various resources"
  type        = string
  default     = ""
}



#### rules

variable "rules" {
  description = "name, priority, direction, access, protocol, source_port_range, destination_port_range, source_address_prefix, destination_address_prefix, network_security_group_name"
  type        = "map"
  default     = {}
}

variable "network_security_group_names" {
  description = "nsg names ti which the rule will be associated"
  type        = list(string)
  default     = []
}
