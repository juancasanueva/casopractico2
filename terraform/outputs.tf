output "resource_group_id" {
  value = azurerm_resource_group.rg.id
  description = "Resource Group id"
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
  description = "VM id"
}

output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
  description = "VM public IP address"
}

output "acr_id" {
  value       = azurerm_container_registry.acr.id
  description = "Azure Container Registry id"
}

output "acr_admin_password" {
  value       = azurerm_container_registry.acr.admin_password
  sensitive   = true
  description = "Azure Container Registry admin password"
}

output "acr_admin_username" {
  value       = azurerm_container_registry.acr.admin_username
  description = "Azure Container Registry admin user"
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.k8.kube_config_raw
  sensitive = true
}