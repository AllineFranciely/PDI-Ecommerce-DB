CREATE FUNCTION VerificarEstoqueDisponivel (p_produtoID INT, p_quantidade INT) RETURNS BOOLEAN
BEGIN
    DECLARE v_estoque INT;
    SELECT QuantidadeEmEstoque
    INTO v_estoque
    FROM Estoque
    WHERE ProdutoID = p_produtoID;
    IF v_estoque >= p_quantidade THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END//
