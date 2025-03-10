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

@Repository("taskDAO")
@Transactional

public class TaskDAOImpl implements TaskDAO{

	@Autowired
	SessionFactory sessionFactory; 

	@Override
	public Category addTask(Category task) 
	{
		
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.save(task);
			
			tx.commit();
		}
		return task;
		
		
	}
	
	
	@Override
	public void deleteTask(Category task) {
	
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.delete(task);
			
			tx.commit();
		}
		
	}
	

	@Override
	public Category updateTask(Category task) {
		
		try(Session session = sessionFactory.openSession()){
			
			Transaction tx = session.beginTransaction();
			
			session.update(task);
			
			tx.commit();
		}
		return task;
	
		
	}
	

	@Override
	public List<Category> listTasks() 
	{
		
		Session session = sessionFactory.openSession();
		
		Query query = session.createQuery("from Category");
		
		List<Category> listTasks = query.list();
		
		session.close();
		
		return listTasks;
	}
	

	@Override
	public Category getTask(int id) 
	{
		Session session = sessionFactory.openSession();
		
		Category task = session.get(Category.class, id);
		
		session.close();
		
		return task;
	}

	
}
