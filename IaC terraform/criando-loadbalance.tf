resource "azurerm_resource_group" "APP-JAVA3" {
  name     = "LB-APP-JAVA"
  location = "Saopaulo/Brazil"
}

resource "azurerm_public_ip" "APP-JAVA" {
  name                = "JAVALB"
  location            = azurerm_resource_group.example
  resource_group_name = azurerm_resource_group.APP-JAVA
  allocation_method   = "Static"
}

resource "azurerm_lb" "example" {
  name                = "TestLoadBalancer"
  location            = azurerm_resource_group.Saopaulo
  resource_group_name = azurerm_resource_group.APP-JAVA

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.example.id
  }
}