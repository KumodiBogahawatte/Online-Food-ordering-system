package model;

public class Food {
	
	private int foodID;
	
	private String fName;
	
	private String fDescription;

	private double fPrice;

	public Food(int foodID, String fName, String fDescription, double fPrice) {
		//super();
		this.foodID = foodID;
		this.fName = fName;
		this.fDescription = fDescription;
		this.fPrice = fPrice;
	}

	public Food() {
		
	}

	public int getFoodID() {
		return foodID;
	}

	public void setFoodID(int foodID) {
		this.foodID = foodID;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getfDescription() {
		return fDescription;
	}

	public void setfDescription(String fDescription) {
		this.fDescription = fDescription;
	}

	public double getfPrice() {
		return fPrice;
	}

	public void setfPrice(double fPrice) {
		this.fPrice = fPrice;
	}
	
	
	
	
}
