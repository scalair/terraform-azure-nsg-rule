# vnet variables

variable "subscription" {
  description = "the azure subscription"
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
  type        = map(object({
    name                         = string
    priority                     = string
    direction                    = string
    access                       = string
    protocol                     = string

    source_port_range            = string
    source_port_ranges           = list(any)

    destination_port_range       = string
    destination_port_ranges      = list(any)

    source_address_prefix      = string
    source_address_prefixes      = list(any)

    destination_address_prefix   = string
    destination_address_prefixes = list(any)
  }))
}

variable "network_security_group_names" {
  description = "nsg names ti which the rule will be associated"
  type        = string
  default     = ""
}
