CREATE TRIGGER AtualizarValorTotalPedido
AFTER INSERT ON ItemPedido
FOR EACH ROW
BEGIN
    DECLARE v_total DECIMAL(10, 2);
    SELECT SUM(Quantidade * PrecoUnitario)
    INTO v_total
    FROM ItemPedido
    WHERE PedidoID = NEW.PedidoID;
    
    UPDATE Pedido
    SET ValorTotal = v_total
    WHERE PedidoID = NEW.PedidoID;
END//
