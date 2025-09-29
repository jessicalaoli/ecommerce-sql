-- 1. Recuperações simples com SELECT. Objetivo: Listar todos os produtos disponíveis.
SELECT nome, preco, estoque
FROM produtos;

-- 2. Filtros com WHERE. Objetivo: Buscar produtos com estoque abaixo de 10 unidades.
SELECT nome, estoque
FROM produtos
WHERE estoque < 10;

-- 3. Expressões para gerar atributos derivados. Objetivo: Calcular o valor total de cada item do pedido (preço × quantidade).
SELECT produto_id, quantidade, preco_unitario,
       (quantidade * preco_unitario) AS valor_total_item
FROM itens_pedido;

-- 4. Ordenações com ORDER BY. Objetivo: Listar os clientes em ordem alfabética.
SELECT nome, email
FROM clientes
ORDER BY nome ASC;

-- 5. Condições de filtros aos grupos com HAVING. Objetivo: Mostrar clientes que fizeram mais de 1 pedido.
SELECT cliente_id, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY cliente_id
HAVING COUNT(*) > 1;

-- 6. Junções entre tabelas para perspectiva complexa. Objetivo: Exibir os nomes dos clientes e os produtos que eles compraram.
SELECT c.nome AS cliente, p.nome AS produto, ip.quantidade
FROM clientes c
JOIN pedidos pd ON c.id = pd.cliente_id
JOIN itens_pedido ip ON pd.id = ip.pedido_id
JOIN produtos p ON ip.produto_id = p.id;



