resource "azurerm_resource_group" "java-lb" {
  name     = "JavaLB"
  location = "westus"
}

resource "azurerm_public_ip" "java-lb" {
  name                = "PublicIPForLB"
  location            = azurerm_resource_group.java-lb.location
  resource_group_name = azurerm_resource_group.java-lb.name
  allocation_method   = "Static"
}

resource "azurerm_lb" "java-lb" {
  name                = "TestLoadBalancer"
  location            = azurerm_resource_group.java-lb.location
  resource_group_name = azurerm_resource_group.java-lb.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.java-lb.id
  }
}