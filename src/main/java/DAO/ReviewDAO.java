package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import interfaces.IReviewDAO;
import model.Review;
import utility.DBConnection;

public class ReviewDAO implements IReviewDAO{
	private static final String SELECT_REVIEW_BY_ID = "SELECT name,mobile,email,message FROM review "
			+ "WHERE rid = ? ";

	private static final String SELECT_ALL_REVIEWS = "SELECT * FROM review";

	private static final String INSERT_REVIEW = "INSERT INTO review (name,mobile,email,message) VALUES (?, ?, ?, ?)";

	private static final String UPDATE_REVIEW = "UPDATE review SET name=?, mobile=?, email=?, message=?  WHERE rid = ?";

	private static final String DELETE_REVIEW = "DELETE FROM review WHERE rid = ?";

	
	// select foodDetails
	public Review selectReview(int rid) {
		Review review = new Review();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(SELECT_REVIEW_BY_ID);
			stmt.setInt(1, rid);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int reviewID = rid;
				String name = rs.getString("name");
				String mobile = rs.getString("mobile");
				String email = rs.getString("email");
				String message = rs.getString("message");

			review = new Review(reviewID, name,mobile,email,message);
			return review;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return review;
		
	}

	@Override
	// inserting a new food
	public void insertReview(Review review) {
		System.out.println(INSERT_REVIEW);

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(INSERT_REVIEW);

			stmt.setString(1, review.getName());
			stmt.setString(2, review.getMobile());
			stmt.setString(3, review.getEmail());
			stmt.setString(4, review.getMessage());

			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	// update food
	public void updateReview(Review review,int ID) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(UPDATE_REVIEW);

			stmt.setString(1, review.getName());
			stmt.setString(2, review.getMobile());
			stmt.setString(3, review.getEmail());
			stmt.setString(4, review.getMessage());
			stmt.setInt(5, ID);

			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	// delete food
	public void deleteReview(int rid) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(DELETE_REVIEW);

			stmt.setInt(1, rid);

			stmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// get all food
	public List<Review> getAllReviews() {

		ArrayList<Review> reviews = new ArrayList<>();

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(SELECT_ALL_REVIEWS);
			// stmt.setInt(1, foodID);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int reviewID = rs.getInt("rid");
				String name = rs.getString("name");
				String mobile = rs.getString("mobile");
				String email = rs.getString("email");
				String message = rs.getString("message");

				Review review = new Review(reviewID, name,mobile,email,message);

				reviews.add(review);
			}

		} catch (Exception e) {

		}
		return reviews;
	}
}
