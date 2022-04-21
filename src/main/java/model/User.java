package model;

import java.util.Date;

public class User {
	private String email;
	private String fname;
	private String lname;
	private Date dob;
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
