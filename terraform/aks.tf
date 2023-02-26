# AKS k8 cluster
#resource "azurerm_kubernetes_cluster" "k8" {
#  name                = "akscp2"
#  location            = azurerm_resource_group.rg.location
#  resource_group_name = azurerm_resource_group.rg.name
#  dns_prefix          = "akscp2"
#
#  default_node_pool {
#    name       = "default"
#    node_count = 1
#    vm_size    = "Standard_D2_v2"
#  }
#
#  linux_profile {
#    admin_username = var.ssh_user
#
#    ssh_key {
#      key_data = file(var.ssh_public_key)
#    }
#  }
#
# identity {
#    type = "SystemAssigned"
#  }
#  
#  depends_on = [azurerm_container_registry.acr]
#}

#resource "azurerm_managed_disk" "disk" {
#  name                 = "disk"
#  location             = azurerm_resource_group.rg.location
#  resource_group_name  = azurerm_resource_group.rg.name
#  storage_account_type = "Standard_LRS"
#  create_option        = "Empty"
#  disk_size_gb         = "1"
#}