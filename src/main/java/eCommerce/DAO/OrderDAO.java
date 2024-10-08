package eCommerce.DAO;

import eCommerce.model.OrderDetail;

public interface OrderDAO {

	public OrderDetail saveOrder(OrderDetail orderDetail);
	
	public boolean updateCart(String username);
	
}
