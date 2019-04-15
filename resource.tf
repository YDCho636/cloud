resource "azurerm_resource_group" "user19-myterraformgroup" {
	name = "user19-myResourceGroup"
	location = "eastus"
	tags {
	environment = "Terraform Demo"
	}
}

