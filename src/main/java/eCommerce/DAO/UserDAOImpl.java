package eCommerce.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eCommerce.model.UserDetail;

@Repository("userDAO")
@Transactional

public class UserDAOImpl  implements UserDAO  {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public UserDetail registerUser(UserDetail user) 
	{
		try(Session session = sessionFactory.openSession()){
			Transaction tx = session.beginTransaction();
			session.save(user);
			tx.commit();
		}
		return user;
		
	}

	@Override
	public UserDetail updateAddress(UserDetail user) 
	{
		try(Session session = sessionFactory.openSession()){
			Transaction tx = session.beginTransaction();
			session.update(user);
			tx.commit();
		}
		return user;
	
		
	}

	@Override
	public UserDetail getUser(String username)
	{
		Session session = sessionFactory.openSession();
		UserDetail userDetail = (UserDetail)session.get(UserDetail.class, username);
		session.close();
		
		return userDetail;
	}


}
