CREATE TABLE Produto (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2),
    QuantidadeEmEstoque INT
);

INSERT INTO Produto (Nome, Preco, QuantidadeEmEstoque) VALUES
('Camiseta', 29.99, 100),
('Calça Jeans', 59.99, 50),
('Tênis', 79.99, 30),
('Bermuda', 39.99, 80),
('Jaqueta', 99.99, 20);
