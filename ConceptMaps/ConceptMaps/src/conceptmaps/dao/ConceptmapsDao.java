package conceptmaps.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import conceptmaps.model.Concept;
import conceptmaps.model.Conceptmaps;
import conceptmaps.model.Link;
import conceptmaps.model.Node;
import conceptmaps.model.Relationship;

public class ConceptmapsDao {
	public ConceptmapsDao() {
		
	}

	// Add or update conceptmaps
	public boolean addConceptmaps(Conceptmaps conceptmaps) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			session.saveOrUpdate(conceptmaps);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException e) {
			// TODO: handle exception
			return false;
		}
	}

	// Add concept
	public boolean addConcept(Concept concept) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			session.saveOrUpdate(concept);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException e) {
			// TODO: handle exception
			return false;
		}
	}

	// Add node
	public boolean addNode(Node node) {
//		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			session.saveOrUpdate(node);
			session.getTransaction().commit();
			return true;
//		} catch (HibernateException e) {
//			// TODO: handle exception
//			return false;
//		}
	}

	public boolean addRelationship(Relationship relationship)
	{
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			session.saveOrUpdate(relationship);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException e) {
			// TODO: handle exception
			return false;
		}
	}
	
	public boolean addLink(Link link)
	{
//		try{
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			session.saveOrUpdate(link);
			session.getTransaction().commit();
			return true;
//		} catch (HibernateException e)
//		{
//			return false;
//		}
	}
}
