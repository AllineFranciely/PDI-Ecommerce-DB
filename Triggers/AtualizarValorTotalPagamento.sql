CREATE TRIGGER AtualizarValorTotalPagamento
AFTER INSERT ON Pagamento
FOR EACH ROW
BEGIN
    DECLARE v_total_pago DECIMAL(10, 2);
    SELECT COALESCE(SUM(ValorPago), 0)
    INTO v_total_pago
    FROM Pagamento
    WHERE PedidoID = NEW.PedidoID;
    
    UPDATE Pedido
    SET ValorTotal = v_total_pago
    WHERE PedidoID = NEW.PedidoID;
END//
