# terraform-fiap-tech-challenge

## 1. Introdução

O fiap-self-service é um sistema de controle de pedidos que necessita de bancos de dados para armazenar informações de clientes, produtos, pedidos e pagamentos. Este documento detalha as escolhas feitas para os diferentes tipos de dados e os motivos dessas escolhas.

## 2. Requisitos do Projeto

O sistema possui diferentes requisitos de armazenamento para tipos distintos de dados:

- **Pagamentos:** Dados de pagamento podem variar em formato, dependendo do meio utilizado. A flexibilidade no formato é necessária para uma integração fácil e eficaz.
- **Clientes, produtos e histórico de pedidos:** Estes dados possuem um formato estruturado e fixo, o que facilita a modelagem relacional.

  
![image](https://github.com/user-attachments/assets/e7392b90-641f-4650-889f-a97a1c8a8ebe)

![image](https://github.com/user-attachments/assets/4e612ef9-6530-436b-b62d-73c60a7f08ef)



## 3. Justificativa das Escolhas

### 3.1. MySQL (Relacional)

O **MySQL** foi escolhido para armazenar dados de clientes, produtos e histórico de pedidos, pois estes possuem uma estrutura bem definida e estabelecida. O banco de dados relacional oferece vantagens como:

- **Facilidade de modelagem de dados estruturados:** O modelo relacional permite a criação de tabelas inter-relacionadas com chaves primárias e estrangeiras, sendo ideal para o controle de pedidos e produtos.
- **Consistência e integridade dos dados:** Suporte completo a transações ACID garante que os dados do cliente e os pedidos estejam sempre em um estado consistente.

### 3.2. DocumentDB (Não Relacional)

O **DocumentDB** foi escolhido para armazenar os dados de pagamento, pois esses dados podem vir em diferentes formatos, dependendo do provedor de pagamento utilizado. O banco de dados não relacional oferece:

- **Flexibilidade na modelagem de dados:** Suporte a documentos JSON que permitem a inserção de diferentes estruturas de dados sem necessidade de pré-definir um esquema rígido.
- **Fácil integração com APIs de pagamento:** A capacidade de lidar com dados em diferentes formatos facilita a integração com uma variedade de gateways e métodos de pagamento.
  
### 3.3. DynamoDB (Cache para Pedidos Ativos)

O **DynamoDB** foi escolhido como solução de cache para pedidos ativos, oferecendo alta escalabilidade e desempenho em leituras rápidas e frequentes. Isso é essencial, já que pedidos ativos são frequentemente consultados em curto espaço de tempo, e essa abordagem alivia a carga sobre o banco de dados relacional principal.

## 4. Considerações Finais

A escolha de diferentes bancos de dados para os diferentes tipos de dados no sistema de controle de pedidos visa otimizar o desempenho e a flexibilidade. Com **MySQL**, garantimos um armazenamento estruturado e confiável para os dados de clientes e pedidos, enquanto **DocumentDB** oferece a maleabilidade necessária para lidar com os variados formatos de dados de pagamento. O uso de **DynamoDB** como cache para pedidos ativos reduz a sobrecarga no banco de dados relacional e melhora o desempenho geral do sistema.





