package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User {
	@Id
	@Column(length = 50)
	private String email;
	@Column(length = 50)
	private String fname;
	@Column(length = 50)
	private String lname;
	private Date dob;
	@Column(length = 50)
	private String password;
	private String typeOfDocument;
	private String docNumber;
	private long phoneNumber;
	
	public User() {}

	/**
	 * @param email
	 * @param fname
	 * @param lname
	 * @param dob
	 * @param password
	 * @param typeOfDocument
	 * @param docNumber
	 * @param phoneNumber
	 */
	public User(String email, String fname, String lname, Date dob, String password, String typeOfDocument,
			String docNumber, long phoneNumber) {
		super();
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.dob = dob;
		this.password = password;
		this.typeOfDocument = typeOfDocument;
		this.docNumber = docNumber;
		this.phoneNumber = phoneNumber;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the fname
	 */
	public String getFname() {
		return fname;
	}

	/**
	 * @param fname the fname to set
	 */
	public void setFname(String fname) {
		this.fname = fname;
	}

	/**
	 * @return the lname
	 */
	public String getLname() {
		return lname;
	}

	/**
	 * @param lname the lname to set
	 */
	public void setLname(String lname) {
		this.lname = lname;
	}

	/**
	 * @return the dob
	 */
	public Date getDob() {
		return dob;
	}

	/**
	 * @param dob the dob to set
	 */
	public void setDob(Date dob) {
		this.dob = dob;
	}
	
	/**
	 * @param dob the dob to set
	 * 1983-09-01
	 * 0123456789
	 */
	public void setDob(String dob) {
		int year = Integer.parseInt(dob.substring(0, 3));
		int month = Integer.parseInt(dob.substring(5, 6));
		int day = Integer.parseInt(dob.substring(8, 9));
		this.dob = new Date(year,month,day);
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the typeOfDocument
	 */
	public String getTypeOfDocument() {
		return typeOfDocument;
	}

	/**
	 * @param typeOfDocument the typeOfDocument to set
	 */
	public void setTypeOfDocument(String typeOfDocument) {
		this.typeOfDocument = typeOfDocument;
	}

	/**
	 * @return the docNumber
	 */
	public String getDocNumber() {
		return docNumber;
	}

	/**
	 * @param docNumber the docNumber to set
	 */
	public void setDocNumber(String docNumber) {
		this.docNumber = docNumber;
	}

	/**
	 * @return the phoneNumber
	 */
	public long getPhoneNumber() {
		return phoneNumber;
	}

	/**
	 * @param phoneNumber the phoneNumber to set
	 */
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", fname=" + fname + ", lname=" + lname + ", dob=" + dob + ", password="
				+ password + ", typeOfDocument=" + typeOfDocument + ", docNumber=" + docNumber + ", phoneNumber="
				+ phoneNumber + "]";
	}
	
	
	
	
}
