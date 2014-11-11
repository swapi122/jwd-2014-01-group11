package conceptmaps.dao;

//import java.util.List;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;

import conceptmaps.model.*;

public class AuthenticationDao {
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
			session.getTransaction().commit();
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
