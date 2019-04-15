resource "azurerm_virtual_network" "user19-myterraformnetwork" {
	name = "user19-myVnet"
	address_space = ["19.0.0.0/16"]
	location = "eastus"
	resource_group_name = "${azurerm_resource_group.user19-myterraformgroup.name}"

	tags {
	environment = "Terraform Demo"
    }
}

