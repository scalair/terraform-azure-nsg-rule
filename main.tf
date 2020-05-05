resource "azurerm_network_security_rule" "rule" {
    for_each = var.rules  // map of objects
        name                       = each.value.name
        priority                   = each.value.priority
        direction                  = each.value.direction
        access                     = each.value.access
        protocol                   = each.value.protocol

        source_port_range          = each.value.source_port_range
        source_port_ranges         = each.value.source_port_ranges[0] == "" ? null : each.value.source_port_ranges

        destination_port_range     = each.value.destination_port_range
        destination_port_ranges    = each.value.destination_port_ranges[0] == "" ? null : each.value.destination_port_ranges

        source_address_prefix      = each.value.source_address_prefix
        source_address_prefixes    = each.value.source_address_prefixes[0] == "" ? null : each.value.source_address_prefixes

        destination_address_prefix   = each.value.destination_address_prefix
        destination_address_prefixes = each.value.destination_address_prefixes[0] == "" ? null : each.value.destination_address_prefixes


        resource_group_name          = var.resource_group_name
        network_security_group_name  = basename(var.network_security_group_name)
}

