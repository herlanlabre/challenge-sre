# challenge-sre
atividade devops aggrandize
## _DIAGRAMA , APP JAVA_

![TESTE AGGRANDIZE-Page-2 drawio](https://user-images.githubusercontent.com/86301028/178385715-171c38ff-866b-4be7-a545-0a1b8482ccc8.png)

criado via [draw.io](https://draw.io/) by Herlan Labre - Analista DevOps.

## Arquitetura APP JAVA

Descriçao da arquitetura da  **Figura**, Acima:

- 1 - O aplicativo cliente de serviço Web é usado para acessar a aplicação.
- 2 - O cliente se conecta ao aplicativo por meio de uma rede. Pode ser uma rede local em uma máquina ou na Internet.
- 3 - O aplicativo JAVA é um conjunto de contêineres do Docker que executam em um cluster do Kubernetes em uma cloud provider da sua escolha. Em geral, mais de uma cópia do aplicativo é implantada e um balanceador de carga é usado para selecionar com qual instância o cliente se comunica. Os contêineres são gerenciados pelo cluster do Kubernetes, que dimensiona automaticamente o número de instâncias.
- 4 - O aplicativo usa um banco de dados da sua preferencia relacional ou nao relacional para persistência. Todos os dados armazenados são enviados ao banco de dados. Nenhum estado é salvo no cluster do Kubernetes.

## Codigo IaC da arquiterura ultilizando terraform no caso aqui na Cloud AZURE.

install terraform linux/Debian segue a documentaçao do link
[INSTALANDO TERRAFORM ](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [autenticando no azure](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli)


