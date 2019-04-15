resource "random_id" "user19-randomId" {
	keepers = {
        # Generate a new ID only when a new resource group is defined
	resource_group = "${azurerm_resource_group.user19-myterraformgroup.name}"
	}
	byte_length = 8
}

