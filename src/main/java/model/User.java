package model;

public class User {
	private int uID;
	private String name;
	private String address;
	private String email;
	private String mobile;
	private String uname;
	private String pwd;
	
	
	public User(int uID, String name, String address, String email, String mobile, String uname, String pwd) {
		this.uID = uID;
		this.name = name;
		this.address = address;
		this.email = email;
		this.mobile = mobile;
		this.uname = uname;
		this.pwd = pwd;
	}
	public User() {

	}
	public int getuID() {
		return uID;
	}
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public String getEmail() {
		return email;
	}
	public String getMobile() {
		return mobile;
	}
	public String getUname() {
		return uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setuID(int uID) {
		this.uID = uID;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
