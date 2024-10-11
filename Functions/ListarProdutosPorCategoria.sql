CREATE FUNCTION ListarProdutosPorCategoria (p_categoriaID INT) RETURNS VARCHAR(255)
BEGIN
    DECLARE v_produtos VARCHAR(255);
    SELECT GROUP_CONCAT(p.Nome SEPARATOR ', ')
    INTO v_produtos
    FROM Produto p
    INNER JOIN ProdutoCategoria pc ON p.ProdutoID = pc.ProdutoID
    WHERE pc.CategoriaID = p_categoriaID;
    RETURN v_produtos;
END//
