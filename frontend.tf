resource "azurerm_linux_virtual_machine" "frontend" {
  name                = "frontend-machine"
  resource_group_name = var.resource_group_name_group
  location            = var.resource_group_name_location
  size                = "Standard_F2"
  admin_username      = "ubuntu"
  custom_data         = filebase64("azure-user-data.sh")
  network_interface_ids = [
    azurerm_network_interface.frontend.id,
  ]



  admin_ssh_key {
    username   = "ubuntu"
    public_key = file("sshkey.pem")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }


  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }



}






