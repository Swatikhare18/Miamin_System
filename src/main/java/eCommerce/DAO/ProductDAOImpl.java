package eCommerce.DAO;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import eCommerce.model.Product;

@Repository("productDAO")
@Transactional

public class ProductDAOImpl implements ProductDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Product addProduct(Product product) 
	{

		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.save(product);
			
			tx.commit();
		}
		return product;
		
	}
	

	@Override
	public void deleteProduct(Product product) 
	{
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.delete(product);
			
			tx.commit();
		}
		
	}
	

	@Override
	public Product updateProduct(Product product) 
	{
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.update(product);
			
			tx.commit();
		}
		return product;
	}
	

	@Override
	public List<Product> listProducts() 
	{
		Session session = sessionFactory.openSession();
		
		Query query = session.createQuery("from Product");
		
		List<Product> listProducts = query.list();
		
		session.close();
		
		return listProducts;
	}
	

	@Override
	public Product getProduct(int productId) 
	{
		Session session = sessionFactory.openSession();
		
		Product product = session.get(Product.class, productId);
		
		session.close();
		
		return product;
	}


}
