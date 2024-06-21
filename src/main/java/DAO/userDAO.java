package DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import utility.DBConnection;
import model.User;

public class userDAO {

	private static final String SELECT_USER_BY_ID = "SELECT name,address,email,mobile,uname,pwd FROM users "
			+ "WHERE uID = ? ";

	private static final String SELECT_ALL_USERS = "SELECT * FROM users";

	private static final String INSERT_USER = "INSERT INTO users (name, address, email, mobile, uname, pwd) VALUES (?, ?, ?, ?, ?, ?)";

	private static final String UPDATE_USER = "UPDATE users SET name=?, address=?, email=? ,mobile=? ,uname=? WHERE uID = ?";

	private static final String DELETE_USER = "DELETE FROM users WHERE uID = ?";
	
	public User selectUser(int uID) {
		User user = new User();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(SELECT_USER_BY_ID);
			stmt.setInt(1, uID);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int uID1 = uID;
				String name = rs.getString("name");
				String address = rs.getString("address");
				String email = rs.getString("email");
				String mobile = rs.getString("mobile");
				String uname = rs.getString("uname");
				String pwd = rs.getString("pwd");

			user = new User(uID1,name,address,email,mobile,uname,pwd);
			return user;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}
	
	// inserting a new user
		public void insertUser(User user) {
			System.out.println(INSERT_USER);

			try {
				Connection con = DBConnection.getConnection();
				PreparedStatement stmt = con.prepareStatement(INSERT_USER);

				stmt.setString(1, user.getName());
				stmt.setString(2, user.getAddress());
				stmt.setString(3, user.getEmail());
				stmt.setString(4, user.getMobile());
				stmt.setString(5, user.getUname());
				stmt.setString(6, user.getPwd());

				stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	
	// update user
	public void updateUser(User user,int uID) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(UPDATE_USER);

			stmt.setString(1, user.getName());
			stmt.setString(2, user.getAddress());
			stmt.setString(3, user.getEmail());
			stmt.setString(4, user.getMobile());
			stmt.setString(5, user.getUname());
//			stmt.setString(6, user.getPwd());
			stmt.setInt(6, uID);

			stmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// delete user
		public void deleteUser(int uID) {
			try {
				Connection con = DBConnection.getConnection();
				PreparedStatement stmt = con.prepareStatement(DELETE_USER);

				stmt.setInt(1, uID);

				stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// get all food
		public List<User> getAllusers() {

			ArrayList<User> users = new ArrayList<>();

			try {
				Connection con = DBConnection.getConnection();
				PreparedStatement stmt = con.prepareStatement(SELECT_ALL_USERS);
				
				ResultSet rs = stmt.executeQuery();

				while (rs.next()) {
					int uID1 = rs.getInt("uID");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String email = rs.getString("email");
					String mobile = rs.getString("mobile");
					String uname = rs.getString("uname");
					String pwd = rs.getString("pwd");

					User user = new User(uID1,name,address,email,mobile,uname,pwd);
					

					users.add(user);
				}

			} catch (Exception e) {

			}
			return users;
		}


}
