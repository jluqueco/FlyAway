package DAO;

import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import model.User;

public class UserDAO {

	public boolean validateUser(User u) {
		Configuration configuration = new Configuration().configure();
		configuration.addAnnotatedClass(User.class);
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory factory = configuration.buildSessionFactory(builder.build());
		
		try(Session session = factory.openSession()){
		
			Query<User> q = session.createQuery("From User where email = :email and password = :password");
			q.setParameter("email", u.getEmail());
			q.setParameter("password", u.getPassword());
			User user = (User)q.uniqueResult();
			
			if( user == null) {
				return false;
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return true;
	}
	
	public void registerUser(User u) {
		Configuration configuration = new Configuration().configure();
		configuration.addAnnotatedClass(User.class);
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory factory = configuration.buildSessionFactory(builder.build());
		int i = 0;
		
		try(Session session = factory.openSession()){
			Transaction t = session.beginTransaction();
			
			session.save(u);
			t.commit();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return ;
	}
}
