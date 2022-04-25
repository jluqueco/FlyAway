package DAO;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import model.FlightDetails;
import model.User;

public class FlightDetailsDAO {
	public List<FlightDetails>  flights(String originCity, String destinationCity, String ddate){
		List<FlightDetails> list = new ArrayList<>();
		Configuration configuration = new Configuration().configure();
		configuration.addAnnotatedClass(FlightDetails.class);
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory factory = configuration.buildSessionFactory(builder.build());
		
		try(Session session = factory.openSession()){
			Query<FlightDetails> q = null;
			q = session.createQuery("From FlightDetails where originCity = '"+ originCity + "' and destinationCity = '" 
															+ destinationCity + "' and departureDate ='" + ddate + "'");
			
			list = q.getResultList();
		}
		
		return list;
	}
	
	public static FlightDetails getFlight(int id) {
		Configuration configuration = new Configuration().configure();
		configuration.addAnnotatedClass(FlightDetails.class);
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory factory = configuration.buildSessionFactory(builder.build());
		FlightDetails flight = null;
		
		try(Session session = factory.openSession()){
			Query<FlightDetails> q = null;
			q = session.createQuery("From FlightDetails where flightId = "+ id );
			
			flight = q.getSingleResult();
		}
		
		return flight;
	}
	
}
