CREATE TABLE Pagamento (
    PagamentoID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT,
    MetodoPagamento VARCHAR(50),
    ValorPago DECIMAL(10, 2),
    DataPagamento DATE,
    FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID)
);

INSERT INTO Pagamento (PedidoID, MetodoPagamento, ValorPago, DataPagamento) VALUES
(1, 'Cartão de Crédito', 59.98, '2024-04-01'),
(2, 'Boleto Bancário', 79.99, '2024-04-02'),
(3, 'Pix', 119.97, '2024-04-03'),
(4, 'Transferência Bancária', 59.99, '2024-04-04'),
(5, 'Cartão de Débito', 99.99, '2024-04-05');
