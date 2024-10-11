CREATE FUNCTION AdicionarFavorito(p_ClienteID INT, p_ProdutoID INT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE v_message VARCHAR(255);
    -- Verifica se o favorito já existe
    IF EXISTS (SELECT 1 FROM Favoritos WHERE ClienteID = p_ClienteID AND ProdutoID = p_ProdutoID) THEN
        SET v_message = 'O produto já está na lista de favoritos do cliente.';
    ELSE
        -- Adiciona o produto à lista de favoritos do cliente
        INSERT INTO Favoritos (ClienteID, ProdutoID) VALUES (p_ClienteID, p_ProdutoID);
        SET v_message = 'Produto adicionado aos favoritos com sucesso.';
    END IF;

    RETURN v_message;
END
