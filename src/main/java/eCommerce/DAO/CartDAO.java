package eCommerce.DAO;

import java.util.List;

import eCommerce.model.CartItem;

public interface CartDAO {
	
	
	public  CartItem  addCartItem(CartItem cartItem);
	
	public void deleteCartItem(CartItem cartItem);
	
	public  CartItem updateCartItem(CartItem cartItem);
	
	public CartItem getCartItem(int cartItemId);
	
	public List<CartItem> listCartItems(String username);
	
	public List<CartItem> ConfirmCartItems(String username);
	
	

}
