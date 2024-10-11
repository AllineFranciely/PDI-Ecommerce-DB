CREATE TABLE ItemPedido (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    PrecoUnitario DECIMAL(10, 2),
    FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);

INSERT INTO ItemPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario) VALUES
(1, 1, 2, 29.99),
(2, 3, 1, 79.99),
(3, 4, 3, 39.99),
(4, 2, 1, 59.99),
(5, 5, 1, 99.99);
