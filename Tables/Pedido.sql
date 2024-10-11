CREATE TABLE Pedido (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

INSERT INTO Pedido (ClienteID, DataPedido, ValorTotal) VALUES
(1, '2024-04-01', 0.00),
(2, '2024-04-02', 0.00),
(3, '2024-04-03', 0.00),
(4, '2024-04-04', 0.00),
(5, '2024-04-05', 0.00);
