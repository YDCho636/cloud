resource "azurerm_storage_account" "user19-mystorageaccount" {
	name = "diag${random_id.user19-randomId.hex}"
	resource_group_name = "${azurerm_resource_group.user19-myterraformgroup.name}"
	location = "eastus"
	account_replication_type = "LRS"
	account_tier = "Standard"

tags {
	environment = "Terraform Demo"
	}
}

