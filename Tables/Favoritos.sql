CREATE TABLE Favoritos ( 
FavoritoID INT PRIMARY KEY AUTO_INCREMENT, 
ClienteID INT, 
ProdutoID INT, 
FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID), 
FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID) );

INSERT INTO Favoritos (ClienteID, ProdutoID) VALUES 
(1, 2), -- Cliente João Silva favorita o produto Calça Jeans 
(2, 3), -- Cliente Maria Santos favorita o produto Tênis
 (3, 1), -- Cliente Pedro Oliveira favorita o produto Camiseta 
(1, 5), -- Cliente João Silva favorita o produto Jaqueta 
(4, 4); -- Cliente Ana Souza favorita o produto Bermuda
