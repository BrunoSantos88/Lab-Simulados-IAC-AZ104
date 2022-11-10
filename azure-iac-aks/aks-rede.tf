resource "azurerm_virtual_network" "network" {
  name                = "mynetwork"
  location            = var.resource_group_name_location
  resource_group_name = var.resource_group_name_group
  address_space       = ["10.50.8.0/23"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "mysubnet"
  resource_group_name  = var.resource_group_name_group
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.50.8.0/24"]
  service_endpoints    = []
}



/**********************************************
 * NAT-gateway
 **********************************************/
resource "azurerm_public_ip" "nat-gateway-public-ip" {
  resource_group_name = var.resource_group_name_group
  location            = var.resource_group_name_location
  name                = "nat-gateway"
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_nat_gateway" "nat-gateway-first" {
  name                  = "nat-gateway-first"
  resource_group_name   = var.resource_group_name_group
  location              = var.resource_group_name_location
  public_ip_address_ids = [azurerm_public_ip.nat-gateway-public-ip.id]
}

resource "azurerm_subnet_nat_gateway_association" "nat-gateway" {
  subnet_id      = azurerm_subnet.subnet.id
  nat_gateway_id = azurerm_nat_gateway.nat-gateway-first.id
}

output "gateway_ips" {
  value = azurerm_public_ip.nat-gateway-public-ip.id
}