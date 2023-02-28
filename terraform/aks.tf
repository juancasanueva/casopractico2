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

  # Azure will assign the id automatically
  identity {
    type = "SystemAssigned"
  }
}

# add the AcrPull role to the k8 cluster so that it can pull images from the ACR
resource "azurerm_role_assignment" "k8_to_acr" {
  scope                             = azurerm_container_registry.acr.id
  role_definition_name              = "AcrPull"
  principal_id                      = azurerm_kubernetes_cluster.k8.kubelet_identity[0].object_id
  skip_service_principal_aad_check  = true
}

# Save the kube.conf file so that we can connect with kubectl
resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.k8]
  filename     = "kube.conf"
  content      = azurerm_kubernetes_cluster.k8.kube_config_raw
}