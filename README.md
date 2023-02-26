# Caso Practico 2

## Deployment

1. Install the Azure CLI:

-  https://docs.microsoft.com/en-us/cli/azure/install-azure-cli

2. Install Terraform CLI:

  - https://learn.hashicorp.com/tutorials/terraform/install-cli

2. Login to Azure:

```console
~$ az login
```

4. Create the infrastructure in Azure with Terraform:

```console
~/terraform$ terraform init
~/terraform$ terraform plan
~/terraform$ terraform apply
```
5. Install Ansible:
- https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#pip-install

6. Update the Ansible inventory file (found inside the Ansible folder) with the public IP address of the Azure Virtual Machine created in step 4.

7.  Configure the infrastructure and deploy the applications with Ansible by running the following script:

```console
~/ansible$ ./deploy.sh
```