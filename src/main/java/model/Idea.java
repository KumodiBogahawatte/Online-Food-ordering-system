package model;

public class Idea {
	
	private int mID;
	private String name;
	private String email;
	private String message;
	private String foodType;

	public Idea(int mID, String name, String email,String foodType, String message) {
		super();
		this.mID = mID;
		this.name = name;
		this.email = email;
		this.foodType = foodType;
		this.message = message;

	}
	public Idea() {
		
	}
	public int getmID() {
		return mID;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getMessage() {
		return message;
	}
	public String getFoodType() {
		return foodType;
	}

	public void setmID(int mID) {
		this.mID = mID;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}

	

}
