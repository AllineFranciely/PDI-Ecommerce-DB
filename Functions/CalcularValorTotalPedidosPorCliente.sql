CREATE FUNCTION CalcularValorTotalPedidosPorCliente (p_clienteID INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE v_total DECIMAL(10, 2);
    SELECT COALESCE(SUM(p.ValorTotal), 0)
    INTO v_total
    FROM Pedido p
    LEFT JOIN Cliente c ON p.ClienteID = c.ClienteID
    WHERE c.ClienteID = p_clienteID;
    RETURN v_total;
END//
