package model;

public class Review {
	
	private int rid;
	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	private String name;
	
	private String mobile;
	
	private String email;
	
	private String message;
	
	
	public Review() {
		super();
	}
	
	public Review(int rid,String name, String mobile, String email, String message) {
		super();
		this.rid = rid;
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.message = message;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}
	/**
	 * @param mobile the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
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
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}
	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "Customer name : " + name + "\n"+"Customer mobile : " + mobile + "\n"+"Customer email : "
				+ email+ "\n"+"Customer message : " + message+ "\n";
	}
	
}
