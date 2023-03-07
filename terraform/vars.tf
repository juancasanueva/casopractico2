variable "resource_group_name" {
  type = string
  description = "Resource Group name"
  default = "casopractico2"
}

variable "location_name" {
  type = string
  description = "Azure Region where the infrastructure wil be created"
  default = "uksouth" 
}

variable "public_key_path" {
  type = string
  description = "Path to public key to access intances with SSH"
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_user" {
  type = string
  description = "User for ssh"
  default = "azureuser"
}

variable "network_name" {
  type = string
  description = "Network name"
  default = "vnet1"
}

variable "subnet_name" {
  type = string
  description = "Subnet name"
  default = "subnet1"
}

variable "vm_size" {
  type = string
  description = "the VM size"
  default = "Standard_F2"
}

variable "container_registry" {
  type        = string
  description = "Name of Container Registry"
  default     = "crjuancasanueva"
}

 variable "aks_cluster_name" {
  type        = string
  description = "AKS cluster name"
  default     = "akscp2"
 }

 variable "aks_kubernetes_version" {
  type        = string
  description = "Kubernetes version"
  default     = "1.26.0"
}