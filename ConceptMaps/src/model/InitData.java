package model;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class InitData {
	public static void main(String[] args) {
		Role role = new Role("rl01", "Addmin", 0);
		Role role2 = new Role("rl02", "User", 1);

		User u1 = new User("hmtri92@gmail.com", "Huynh Minh Tri", new Date(),
				false, "12345", role);
		User u2 = new User();
		u2.setID_Email("minhtri92.spk@gmail.com");

		Concept concept1 = new Concept();
		concept1.setID("con1");
		Concept concept2 = new Concept();
		concept1.setID("con2");

		ConCeptMaps map1 = new ConCeptMaps();
		map1.setID("map1");
		map1.setOwner(u1);

		ConCeptMaps map2 = new ConCeptMaps();
		map2.setID("map2");
		map2.setOwner(u2);

		Share share = new Share();
		share.setShare_id("share1");
		share.setUser(u1);
		share.setConceptmaps(map2);

		SessionFactory sessionf = new Configuration().configure()
				.buildSessionFactory();

		Session session = sessionf.openSession();
		session.beginTransaction();

		session.save(role);
		session.save(role2);
		session.save(u1);
		session.save(u1);
		session.save(concept1);
		session.save(concept2);
		session.save(map1);
		session.save(map2);
		session.save(share);

		session.getTransaction().commit();
		session.close();
	}
}

// class HibernateUtils {
//
// private static final SessionFactory sessionFactory = buildSessionFactory();
//
// @SuppressWarnings("deprecation")
// private static SessionFactory buildSessionFactory() {
// try {
// // Create the SessionFactory from hibernate.cfg.xml
// return new AnnotationConfiguration().configure().buildSessionFactory();
//
// } catch (Throwable ex) {
// System.err.println("Initial SessionFactory creation failed." + ex);
// throw new ExceptionInInitializerError(ex);
// }
// }
//
// public static SessionFactory getSessionFactory() {
// return sessionFactory;
// }
// }
