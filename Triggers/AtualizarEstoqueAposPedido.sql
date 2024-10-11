CREATE TRIGGER AtualizarEstoqueAposPedido
AFTER INSERT ON ItemPedido
FOR EACH ROW
BEGIN
    DECLARE v_nova_quantidade INT;
    SELECT QuantidadeEmEstoque - NEW.Quantidade
    INTO v_nova_quantidade
    FROM Estoque
    WHERE ProdutoID = NEW.ProdutoID;
    
    UPDATE Estoque
    SET QuantidadeEmEstoque = v_nova_quantidade
    WHERE ProdutoID = NEW.ProdutoID;
END//
