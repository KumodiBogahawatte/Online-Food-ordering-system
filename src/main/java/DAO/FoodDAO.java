 package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Food;
import utility.DBConnection;
import interfaces.IFoodDAO;

public class FoodDAO implements IFoodDAO {

	private static final String SELECT_FOOD_BY_ID = "SELECT fName,fPrice,fDescription FROM food "
			+ "WHERE foodID = ? ";

	private static final String SELECT_ALL_FOODS = "SELECT * FROM food";

	private static final String INSERT_FOOD = "INSERT INTO food (fName, fPrice, fDescription) VALUES (?, ?, ?)";

	private static final String UPDATE_FOOD = "UPDATE food SET fName=?, fPrice=?, fDescription=? WHERE foodID = ?";

	private static final String DELETE_FOOD = "DELETE FROM food WHERE foodID = ?";

	
	// select foodDetails
	public Food selectFood(int foodID) {
		Food food = new Food();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(SELECT_FOOD_BY_ID);
			stmt.setInt(1, foodID);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int foodID11 = foodID;
				String fName = rs.getString("fName");
				String fDescription = rs.getString("fDescription");
				double fPrice = rs.getDouble("fPrice");

			food = new Food(foodID11, fName, fDescription, fPrice);
			return food;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return food;
		
	}

	@Override
	// inserting a new food
	public void insertFood(Food food) {
		System.out.println(INSERT_FOOD);

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(INSERT_FOOD);

			stmt.setString(1, food.getfName());
			stmt.setDouble(2, food.getfPrice());
			stmt.setString(3, food.getfDescription());

			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	// update food
	public void updateFood(Food food,int ID) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(UPDATE_FOOD);

			stmt.setString(1, food.getfName());
			stmt.setDouble(2, food.getfPrice());
			stmt.setString(3, food.getfDescription());
			stmt.setInt(4, ID);

			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	// delete food
	public void deleteFood(int foodID) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(DELETE_FOOD);

			stmt.setInt(1, foodID);

			stmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// get all food
	public List<Food> getAllFoods() {

		ArrayList<Food> foods = new ArrayList<>();

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(SELECT_ALL_FOODS);
			// stmt.setInt(1, foodID);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int foodID11 = rs.getInt("foodID");
				String fName = rs.getString("fName");
				String fDescription = rs.getString("fDescription");
				double fPrice = rs.getDouble("fPrice");

				Food food = new Food(foodID11, fName, fDescription, fPrice);

				foods.add(food);
			}

		} catch (Exception e) {

		}
		return foods;
	}

}
