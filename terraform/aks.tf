# AKS k8 cluster
resource "azurerm_kubernetes_cluster" "k8" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version  = var.aks_kubernetes_version
  dns_prefix          = var.aks_cluster_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

 identity {
    type = "SystemAssigned"
  }
}

# Save the kube.conf file so that we can connect with kubectl
resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.k8]
  filename     = "kube.conf"
  content      = azurerm_kubernetes_cluster.k8.kube_config_raw
}