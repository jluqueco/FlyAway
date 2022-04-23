package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class FlightDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int flightId;
	private String flightNumber;
	private String airline;
	private double price;
	private String originCity;
	private String destionationCity;
	private String departureTime;
	private String arrivalTime;
	private Date departureDate;
	private Date arrivalDate;
	
	public FlightDetails() {}

	/**
	 * @param flightNumber
	 * @param airline
	 * @param price
	 * @param originCity
	 * @param destionationCity
	 * @param departureTime
	 * @param arrivalTime
	 */
	public FlightDetails(String flightNumber, String airline, double price, String originCity, String destionationCity,
			String departureTime, String arrivalTime) {
		super();
		this.flightNumber = flightNumber;
		this.airline = airline;
		this.price = price;
		this.originCity = originCity;
		this.destionationCity = destionationCity;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
	}

	/**
	 * @return the flightId
	 */
	public int getFlightId() {
		return flightId;
	}

	/**
	 * @param flightId the flightId to set
	 */
	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	/**
	 * @return the flightNumber
	 */
	public String getFlightNumber() {
		return flightNumber;
	}

	/**
	 * @param flightNumber the flightNumber to set
	 */
	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

	/**
	 * @return the airline
	 */
	public String getAirline() {
		return airline;
	}

	/**
	 * @param airline the airline to set
	 */
	public void setAirline(String airline) {
		this.airline = airline;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}

	/**
	 * @return the originCity
	 */
	public String getOriginCity() {
		return originCity;
	}

	/**
	 * @param originCity the originCity to set
	 */
	public void setOriginCity(String originCity) {
		this.originCity = originCity;
	}

	/**
	 * @return the destionationCity
	 */
	public String getDestionationCity() {
		return destionationCity;
	}

	/**
	 * @param destionationCity the destionationCity to set
	 */
	public void setDestionationCity(String destionationCity) {
		this.destionationCity = destionationCity;
	}

	/**
	 * @return the departureTime
	 */
	public String getDepartureTime() {
		return departureTime;
	}

	/**
	 * @param departureTime the departureTime to set
	 */
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}

	/**
	 * @return the arrivalTime
	 */
	public String getArrivalTime() {
		return arrivalTime;
	}

	/**
	 * @param arrivalTime the arrivalTime to set
	 */
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	/**
	 * @return the departureDate
	 */
	public Date getDepartureDate() {
		return departureDate;
	}

	/**
	 * @param departureDate the departureDate to set
	 */
	public void setDepartureDate(Date departureDate) {
		this.departureDate = departureDate;
	}

	/**
	 * @return the arrivalDate
	 */
	public Date getArrivalDate() {
		return arrivalDate;
	}

	/**
	 * @param arrivalDate the arrivalDate to set
	 */
	public void setArrivalDate(Date arrivalDate) {
		this.arrivalDate = arrivalDate;
	}

	@Override
	public String toString() {
		return "FlightDetails [flightNumber=" + flightNumber + ", airline=" + airline + ", price=" + price
				+ ", originCity=" + originCity + ", destionationCity=" + destionationCity + ", departureTime="
				+ departureTime + ", arrivalTime=" + arrivalTime + "]";
	}
	
	
}
