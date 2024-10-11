CREATE TABLE Estoque (
    ProdutoID INT PRIMARY KEY,
    QuantidadeEmEstoque INT,
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);

INSERT INTO Estoque (ProdutoID, QuantidadeEmEstoque) VALUES
(1, 100),
(2, 50),
(3, 30),
(4, 80),
(5, 20);
