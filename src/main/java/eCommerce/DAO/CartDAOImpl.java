package eCommerce.DAO;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import eCommerce.model.CartItem;

@Repository("cartDAO")
@Transactional

public class CartDAOImpl implements CartDAO  {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public CartItem addCartItem(CartItem cartItem) 
	{
		
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.save(cartItem);
			
			tx.commit();
		}
		return cartItem;
		
			
	}

	@Override
	public void deleteCartItem(CartItem cartItem) 
	{
		
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.delete(cartItem);
			
			tx.commit();
		}
		
	}

	@Override
	public CartItem updateCartItem(CartItem cartItem) 
	{
		
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.update(cartItem);
			
			tx.commit();
		}
		return cartItem;
		
	}

	@Override
	public CartItem getCartItem(int cartItemId) 
	{
	    Session session = sessionFactory.openSession();
	    
	    CartItem cartItem = session.get(CartItem.class, cartItemId);
	    
	    session.close();
	    
		return cartItem;
	}

	@Override
	public List<CartItem> listCartItems(String username) 
	{
		Session session = sessionFactory.openSession();
		
		Query query = session.createQuery("from CartItem where username=:username and paymentStatus='NP'");
		
		query.setParameter("username", username);
		
		List<CartItem> cartItemList = query.list();
		
		session.close();
		
		return cartItemList;
	}
	
	
	@Override
	public List<CartItem> ConfirmCartItems(String username) 
	{
		Session session = sessionFactory.openSession();
		
		Query query = session.createQuery("from CartItem where username=:username and paymentStatus='P'");
		
		query.setParameter("username", username);
		
		List<CartItem> paidItemList = query.list();
		
		session.close();
		
		return paidItemList;
	}

	
}
