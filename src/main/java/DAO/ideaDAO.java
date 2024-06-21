package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Idea;
import utility.DBConnection;

public class ideaDAO {
	
	private static final String INSERT_IDEA = "INSERT INTO idea (name, email, foodType, message) VALUES (?, ?, ?, ?)";
	
	// inserting a new user
	public void insertIdea(Idea idea) {
		System.out.println(INSERT_IDEA);

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(INSERT_IDEA);

			stmt.setString(1, idea.getName());
			stmt.setString(2, idea.getEmail());
			stmt.setString(3, idea.getFoodType());
			stmt.setString(4, idea.getMessage());

			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	

}
