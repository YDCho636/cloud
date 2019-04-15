resource "azurerm_subnet" "user19-myterraformsubnet" {
	name = "user19-mySubnet1"
	resource_group_name = "${azurerm_resource_group.user19-myterraformgroup.name}"
	virtual_network_name = "${azurerm_virtual_network.user19-myterraformnetwork.name}"
	address_prefix = "19.0.1.0/24"
}
