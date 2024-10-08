package eCommerce.DAO;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import eCommerce.model.Category;

@Repository("categoryDAO")
@Transactional

public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
	SessionFactory sessionFactory; 

	@Override
	public Category addCategory(Category category) 
	{
		
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.save(category);
			
			tx.commit();
		}
		return category;
		
		
	}
	
	
	@Override
	public void deleteCategory(Category category) {
	
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.delete(category);
			
			tx.commit();
		}
		
	}
	

	@Override
	public Category updateCategory(Category category) {
		
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.update(category);
			
			tx.commit();
		}
		return category;
	
		
	}
	

	@Override
	public List<Category> listCategories() 
	{
		
		Session session = sessionFactory.openSession();
		
		Query query = session.createQuery("from Category");
		
		List<Category> listCategories = query.list();
		
		session.close();
		
		return listCategories;
	}
	

	@Override
	public Category getCategory(int categoryId) 
	{
		Session session = sessionFactory.openSession();
		
		Category category = session.get(Category.class, categoryId);
		
		session.close();
		
		return category;
	}

	
}
