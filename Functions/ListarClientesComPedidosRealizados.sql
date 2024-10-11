CREATE FUNCTION ListarClientesComPedidosRealizados () RETURNS VARCHAR(255)
BEGIN
    DECLARE v_clientes VARCHAR(255);
    SELECT GROUP_CONCAT(DISTINCT c.Nome SEPARATOR ', ')
    INTO v_clientes
    FROM Cliente c
    INNER JOIN Pedido p ON c.ClienteID = p.ClienteID;
    RETURN v_clientes;
END//
