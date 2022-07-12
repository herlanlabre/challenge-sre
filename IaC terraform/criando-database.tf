resource "azurerm_resource_group" "APP-JAVA" {
  name     = "APP-JAVA-resources"
  location = "Saopaulo/Brazil"
}

resource "azurerm_mssql_server" "APP-JAVA" {
  name                         = "javadb"
  resource_group_name          = azurerm_resource_group.APP-JAVA
  location                     = azurerm_resource_group.Saopaulo
  version                      = "12.0"
  administrator_login          = "java"
  administrator_login_password = "java@123"
  minimum_tls_version          = "1.2"

  azuread_administrator {
    login_username = "AzureAD Admin"
    object_id      = "00000000-0000-0000-0000-000000000000"
  }

  tags = {
    environment = "production"
  }
}