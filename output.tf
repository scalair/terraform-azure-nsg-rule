# nsg outputs
output "rule_name" {
  value = "${azurerm_network_security_rule.rule.*.name}"
}

output "nsg_name" {
  value = "${azurerm_network_security_rule.rule.*.network_security_group_name}"
}
