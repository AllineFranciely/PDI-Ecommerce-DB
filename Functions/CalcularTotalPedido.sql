CREATE FUNCTION CalcularTotalPedido (p_pedidoID INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE v_total DECIMAL(10, 2);
    SELECT SUM(Quantidade * PrecoUnitario)
    INTO v_total
    FROM ItemPedido
    WHERE PedidoID = p_pedidoID;
    RETURN v_total;
END//
