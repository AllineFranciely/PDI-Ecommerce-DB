CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

INSERT INTO Cliente (Nome, Email, Telefone) VALUES
('João Silva', 'joao@email.com', '(11) 1234-5678'),
('Maria Santos', 'maria@email.com', '(22) 9876-5432'),
('Pedro Oliveira', 'pedro@email.com', '(33) 4567-8901'),
('Ana Souza', 'ana@email.com', '(44) 7654-3210'),
('Carlos Pereira', 'carlos@email.com', '(55) 2345-6789');
