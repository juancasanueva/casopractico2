variable "resource_group_name" {
  type = string
  description = "Nombre del Resource Group"
  default = "casopractico2"
}

variable "location_name" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "uksouth" 
}

variable "public_key_path" {
  type = string
  description = "Ruta para la clave pública de acceso a las instancias"
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_user" {
  type = string
  description = "Usuario para hacer ssh"
  default = "azureuser"
}

variable "network_name" {
  type = string
  description = "Nombre de la red"
  default = "vnet1"
}

variable "subnet_name" {
  type = string
  description = "Nombre de la subred"
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