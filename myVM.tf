resource "azurerm_virtual_machine" "user19-myterraformvm" {
	name = "user19-myVM"
	location = "eastus"
	resource_group_name = "${azurerm_resource_group.user19-myterraformgroup.name}"
	network_interface_ids = ["${azurerm_network_interface.user19-myterraformnic.id}"]
	vm_size = "Standard_DS1_v2"

storage_os_disk {
	name = "myOsDisk"
	caching = "ReadWrite"
	create_option = "FromImage"
	managed_disk_type = "Premium_LRS"
}
storage_image_reference {
	publisher = "Canonical"
	offer = "UbuntuServer"
	sku = "16.04.0-LTS"
	version = "latest"
}
os_profile {
	computer_name = "user19-myvm"
	admin_username = "azureuser"
	admin_password = "P@ssw0rd"
}
os_profile_linux_config {
	disable_password_authentication = true
	ssh_keys {
	path = "/home/azureuser/.ssh/authorized_keys"
	key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEiXUovLkWNcb9CH3vJyWxAQo7xJyt3skVMwVY7bpHAR4zkEUom4t0hOvPb4gcWu/yLR1Uj/HTRkl5rh9I2ji5pG7nMPvs32is34h2KrNZ6UFVM8waj0d2hPtm0dPJFYcVc/2gP6zSzW3Xt6P6DSQjebjMahiSMp/FzVYm2RbxsPaeSLWbIE0eVlUfoXrZtxblKFGhz6nWEyFisyt8LqkNvH57+IklIQbvG7fY55gkVV4YDsRaqIsM9l14ltQfHpxqOQ1UfYmxAqCmgg//rsrdzr2B8425enr0WsO8bJHTlZW621o+io9GHD3tftUL8mjtUqP1AFSD5GGtYD+lnRkd user19@cc-ea97fdc9-758b9847f5-8nmvc"
	}
}

boot_diagnostics {
	enabled= "true"
	storage_uri = "${azurerm_storage_account.user19-mystorageaccount.primary_blob_endpoint}"
}

tags {
	environment = "Terraform Demo"
	}
}

