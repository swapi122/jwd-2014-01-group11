package conceptmaps.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import conceptmaps.model.User;

public class UserDao {
	public User getUser(String id)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, id);
			System.out.println(user.getFullName());
			
//			session.getTransaction().commit();
			return user;
			
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public boolean checkAuthentication(String name, String password)
	{
		List<User> results = new ArrayList<User>();
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();

			String hql = "FROM User U WHERE U.idUser=:name AND U.password = :password";
			Query query = session.createQuery(hql);
			
			query.setParameter("name", name);
			query.setParameter("password", password);
			
			results = query.list();
//			session.getTransaction().commit();
		} catch (HibernateException e) {
		}
		
		if(!results.isEmpty())
		{
			return true;
		}
		else
			return false;
	}
}
