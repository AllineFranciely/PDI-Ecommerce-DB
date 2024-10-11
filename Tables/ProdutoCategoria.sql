CREATE TABLE ProdutoCategoria (
    ProdutoID INT,
    CategoriaID INT,
    PRIMARY KEY (ProdutoID, CategoriaID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID),
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID)
);

INSERT INTO ProdutoCategoria (ProdutoID, CategoriaID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 1);
