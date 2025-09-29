# Projeto E-commerce SQL
Modelagem de banco de dados para e-commerce com SQL - desafio DIO
Este projeto representa a modelagem lógica de um banco de dados para um sistema de e-commerce, com refinamentos como:

- Clientes PF e PJ
- Múltiplas formas de pagamento
- Entregas com rastreio
- Relacionamentos entre produtos e fornecedores

## Estrutura de Tabelas
- clientes
- formas_pagamento
- fornecedores
- produtos
- pedidos
- itens_pedido
- entregas

## Consultas SQL
Inclui exemplos de:
- SELECT com filtros
- JOINs entre tabelas
- Atributos derivados
- Agrupamentos com HAVING

Objetivo:
Aplique o mapeamento para o  cenário:

“Refine o modelo apresentado acrescentando os seguintes pontos”

Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
Entrega – Possui status e código de rastreio;
Algumas das perguntas que podes fazer para embasar as queries SQL:

Quantos pedidos foram feitos por cada cliente?
Algum vendedor também é fornecedor?
Relação de produtos fornecedores e estoques;
Relação de nomes dos fornecedores e nomes dos produtos;
