# K8 cluster
resource "azurerm_kubernetes_cluster" "k8" {
  name                = "aks1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

 identity {
    type = "SystemAssigned"
  }
  
  depends_on = [azurerm_container_registry.acr]
}