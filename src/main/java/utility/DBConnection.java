package utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url = "jdbc:mysql://localhost:3306/foodstore";
	private static String userName = "root";
	private static String password = "1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
		}catch(Exception e) {
			System.out.println("Database connectivity is failed");
		}
		
		return con;
	}
}
