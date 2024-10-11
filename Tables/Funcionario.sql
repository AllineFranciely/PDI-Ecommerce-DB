CREATE TABLE Funcionario (
    FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Cargo VARCHAR(100)
);

INSERT INTO Funcionario (Nome, Cargo) VALUES
('Carlos Alberto', 'Gerente'),
('Maria Oliveira', 'Vendedora'),
('João Pedro', 'Estoquista'),
('Ana Silva', 'Caixa'),
('Felipe Santos', 'Analista de Sistemas');
