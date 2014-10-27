package conceptmaps.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import conceptmaps.model.Concepts;

public class DrawDao {
	// Add
	public void addConceptMaps(Concepts concept) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.save(concept);
			session.getTransaction().commit();
		} catch (HibernateException e) {
		}
	}
	
	// Get list concept maps
	public List<Concepts> getListConcepts() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<Concepts> listConcept = new ArrayList<Concepts>();
		try {
			session.beginTransaction();
			listConcept = session.createQuery("FROM Concepts").list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
		} finally {
			session.close();
		}
		return listConcept;
	}
}
