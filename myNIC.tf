resource "azurerm_network_interface" "user19-myterraformnic" {
	name = "user19-myNIC"
	location = "eastus"
	resource_group_name = "${azurerm_resource_group.user19-myterraformgroup.name}"
	network_security_group_id = "${azurerm_network_security_group.user19-myterraformnsg.id}"

ip_configuration {
        name                          = "user19-myNicConfiguration"
        subnet_id                     = "${azurerm_subnet.user19-myterraformsubnet.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.user19-myterraformpublicip.id}"
}

    tags {
        environment = "Terraform Demo"
    }
}

