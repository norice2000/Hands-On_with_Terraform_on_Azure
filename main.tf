resource "azurerm_resource_group" "rg" {
  name     = "813-02436e2c-hands-on-with-terraform-on-azure"
  location = "South Central US"
}

module "securestorage" {
  source               = "app.terraform.io/HandsOn-with-Terraform-on-Azure/securestorage/azurerm"
  version              = "1.0.0"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "changemename"
}