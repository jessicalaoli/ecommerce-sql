-- Clientes
INSERT INTO clientes (nome, email, tipo, cpf_cnpj) VALUES
('Maria Silva', 'maria@gmail.com', 'PF', '12345678900'),
('Empresa XYZ', 'contato@xyz.com.br', 'PJ', '98765432000199');

-- Fornecedores
INSERT INTO fornecedores (nome, cnpj) VALUES
('Fornecedor A', '11222333000181'),
('Fornecedor B', '99887766000155');

-- Produtos
INSERT INTO produtos (nome, descricao, preco, estoque, fornecedor_id) VALUES
('Notebook Dell', 'Notebook i7 16GB RAM', 4500.00, 10, 1),
('Mouse Logitech', 'Mouse sem fio', 150.00, 50, 2);

-- Pedidos
INSERT INTO pedidos (cliente_id, status) VALUES
(1, 'Processando'),
(2, 'Enviado');

-- Itens do Pedido
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 4500.00),
(2, 2, 2, 150.00);

-- Entregas
INSERT INTO entregas (pedido_id, status_entrega, codigo_rastreio, data_envio) VALUES
(2, 'Em trânsito', 'BR123456789', NOW());

-- Formas de Pagamento
INSERT INTO formas_pagamento (cliente_id, tipo_pagamento, detalhes) VALUES
(1, 'Cartão de Crédito', 'Visa final 1234'),
(1, 'Pix', 'Chave CPF');
