resource "azurerm_resource_group" "app-java" {
  name     = "app-java"
  location = "westus"
}

resource "azurerm_kubernetes_cluster" "java" {
  name                = "java-aks1"
  location            = azurerm_resource_group.java.location
  resource_group_name = azurerm_resource_group.java.name
  dns_prefix          = "javaeaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  service_principal {
    client_id     = "00000000-0000-0000-0000-000000000000"
    client_secret = "00000000000000000000000000000000"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "example" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.example.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1

  tags = {
    Environment = "Production"
  }
}