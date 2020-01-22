resource "azurerm_network_security_rule" "rule" {
  count = "${length(var.rules) * length(var.network_security_group_names)}"
  name                        = "${element(split(",",var.rules[count.index % length(var.rules)]),0)}"
  priority                    = "${element(split(",",var.rules[count.index % length(var.rules)]),1)}"
  direction                   = "${element(split(",",var.rules[count.index % length(var.rules)]),2)}"
  access                      = "${element(split(",",var.rules[count.index % length(var.rules)]),3)}"
  protocol                    = "${element(split(",",var.rules[count.index % length(var.rules)]),4)}"
  source_port_range           = "${element(split(",",var.rules[count.index % length(var.rules)]),5)}"
  destination_port_ranges      = "${element(split(",",var.rules[count.index % length(var.rules)]),6)}"
  source_address_prefix       = "${element(split(",",var.rules[count.index % length(var.rules)]),7)}"
  destination_address_prefix  = "${element(split(",",var.rules[count.index % length(var.rules)]),8)}"
  resource_group_name         = "${var.resource_group_name}"
  #network_security_group_name = "${var.network_security_group_names[(count.index) / length(var.rules)]}" # terraform 0.11
  network_security_group_name = "${var.network_security_group_names[floor((count.index) / length(var.rules))]}" ## terraform 0.12
}
