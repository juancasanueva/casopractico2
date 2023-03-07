# Caso Practico 2: Deployment Automation in Cloud Environment

## Purpose
Create intrastructure in **Azure** using the infrastructure as Code (IaC) model with **Terraform**, and automating the configuration of the infrastructure and deployment of applications using **Ansible**.

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

7. Update the Azure Container Resgitry name (azure_reg), user (azure_reg_user) and password (azure_reg_password) in the vars.yml file found in the ansible/vars folder.

8.  Configure the infrastructure and deploy the applications with Ansible by running the following script:

```console
~/ansible$ ./deploy.sh
```

## Destroy Infrastructure

To destroy the Azure Infraestructure deployed with **Terraform**, run the following command:
```console
~/terraform$ terraform destroy
```