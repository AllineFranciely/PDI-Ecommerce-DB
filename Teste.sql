CALL InserirPedido(1, '2024-05-20', '[{"ProdutoID":1, "Quantidade":2, "PrecoUnitario":29.99}, {"ProdutoID":3, "Quantidade":1, "PrecoUnitario":79.99}]');

SELECT 
    TRIGGER_NAME,
    EVENT_MANIPULATION,
    EVENT_OBJECT_TABLE,
    ACTION_STATEMENT,
    ACTION_TIMING
FROM 
    information_schema.TRIGGERS
WHERE 
    TRIGGER_SCHEMA = 'nome_do_seu_esquema';

-- Adicionando itens ao pedido 1
INSERT INTO ItemPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
VALUES (1, 2, 1, 59.99); -- Adiciona 1 unidade de Calça Jeans ao pedido 1

INSERT INTO ItemPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
VALUES (1, 3, 2, 79.99); -- Adiciona 2 unidades de Tênis ao pedido 1

-- Adicionando itens ao pedido 2
INSERT INTO ItemPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
VALUES (2, 1, 3, 29.99); -- Adiciona 3 unidades de Camiseta ao pedido 2

-- Adicionando pagamentos ao pedido 1
INSERT INTO Pagamento (PedidoID, MetodoPagamento, ValorPago, DataPagamento)
VALUES (1, 'Pix', 119.98, '2024-04-06'); -- Adiciona um pagamento via Pix ao pedido 1

-- Adicionando pagamentos ao pedido 2
INSERT INTO Pagamento (PedidoID, MetodoPagamento, ValorPago, DataPagamento)
VALUES (2, 'Cartão de Crédito', 89.97, '2024-04-07'); -- Adiciona um pagamento via Cartão de Crédito ao pedido 2

-- Verificando os valores totais dos pedidos
SELECT PedidoID, ClienteID, DataPedido, ValorTotal
FROM Pedido
WHERE PedidoID IN (1, 2);

Testando os favoritos
-- Cliente 2 (Maria Santos) adicionando o produto 1 (Camiseta) aos favoritos
SELECT AdicionarFavorito(2, 1);
-- Cliente 1 (João Silva) tentando adicionar novamente o produto 4 (Bermuda) aos favoritos
SELECT AdicionarFavorito(1, 4);

SELECT f.FavoritoID, c.Nome AS Cliente, p.Nome AS Produto
FROM Favoritos f
INNER JOIN Cliente c ON f.ClienteID = c.ClienteID
INNER JOIN Produto p ON f.ProdutoID = p.ProdutoID;
