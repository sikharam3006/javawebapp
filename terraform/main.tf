provider "azurerm" {
features {}
}
resource "azurerm_resource_group" "rg" {
name = var.resource_group_name
location = var.location
}


resource "azurerm_service_plan" "plan" {
name = "java-app-plan"
location = azurerm_resource_group.rg.location
resource_group_name = azurerm_resource_group.rg.name
os_type = "Linux"
sku_name = "B1"
}


resource "azurerm_linux_web_app" "app" {
name = var.app_service_name
location = azurerm_resource_group.rg.location
resource_group_name = azurerm_resource_group.rg.name
service_plan_id = azurerm_service_plan.plan.id


site_config {
application_stack {
java_version = "17"
java_server = "JAVA"
java_server_version = "17"
}
}
}
