# Kubernetes cluster
resource "azurerm_kubernetes_cluster" "kubernetes-cluster" {
  depends_on = [
    # This dependency forces the NAT gateway to be fully created first
    azurerm_nat_gateway.nat-gateway-first
  ]
  name                = "kubernetes-cluster-last"
  location            = var.resource_group_name_location
  resource_group_name = var.resource_group_name_group
  dns_prefix          = "kubernetes-cluster-last"

  default_node_pool {
    name                = "default"
    enable_auto_scaling = true
    min_count           = 3
    max_count           = 6
    vm_size        = "Standard_F2"
    vnet_subnet_id = azurerm_subnet.subnet.id
  }

  network_profile {
    network_plugin     = "azure"
    network_policy     = "azure"
    dns_service_ip     = "172.16.0.10"
    docker_bridge_cidr = "172.18.0.1/16"
    service_cidr       = "172.16.0.0/16"
    load_balancer_sku  = "standard"
    outbound_type      = "userAssignedNATGateway"
    nat_gateway_profile {
      idle_timeout_in_minutes = 4
    }
  }

  
  identity {
    type = "SystemAssigned"
  }

  lifecycle {
    ignore_changes = [
      network_profile[0].nat_gateway_profile
    ]
  }
}