resource "azurerm_public_ip" "user19-myterraformpublicip" {
	name = "user19-myPublicIP"
	location = "eastus"
	resource_group_name = "${azurerm_resource_group.user19-myterraformgroup.name}"
	allocation_method = "Dynamic"

	tags {
		environment = "Terraform Demo"
	}
}

