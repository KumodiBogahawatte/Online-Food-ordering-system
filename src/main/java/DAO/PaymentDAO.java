package DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import interfaces.IPaymentDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.Payment;
import utility.DBConnection;

public class PaymentDAO implements IPaymentDAO{
	private static final String SELECT_PAYMENT_BY_NO= "Select cardNo,expDate,cvv,email FROM payment "
	 		+ "WHERE payID=?";
	private static final String SELECT_ALL_PAYMENTS="SELECT * FROM payment";
	private static final String INSERT_PAYMENT="INSERT INTO payment (cardNo,expDate,cvv,email) VALUES(?,?,?,?)";
	private static final String UPDATE_PAYMENT= "UPDATE payment SET cardNo=?, expDate=?, cvv=?, email=? WHERE payID = ? ";

	private static final String DELETE_PAYMENT="DELETE FROM payment where payID=?";
	
	
	public Payment selectPayment(int payID) {
		Payment payment = new Payment();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(SELECT_PAYMENT_BY_NO);
			stmt.setInt(1,payID);
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				int payID1 = rs.getInt("payID");
				String cardNo = rs.getString("cardNo");
				String expDate = rs.getString("expDate");
				int cvv = rs.getInt("cvv");
				String email = rs.getString("email");

			payment = new Payment(payID1,cardNo,expDate,cvv,email);
			return payment;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return payment;
		
	}
	
	// inserting a new card
		public void insertPayment(Payment payment) {
			System.out.println(INSERT_PAYMENT);

			try {
				Connection con = DBConnection.getConnection();
				PreparedStatement stmt = con.prepareStatement(INSERT_PAYMENT);

				stmt.setString(1, payment.getCardNo());
				stmt.setString(2, payment.getExpDate());
				stmt.setInt(3, payment.getCvv());
				stmt.setString(4, payment.getEmail());

				stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// update card
		public void updatePayment(Payment payment, int ID){
			try {
				Connection con = DBConnection.getConnection();
				PreparedStatement stmt = con.prepareStatement(UPDATE_PAYMENT);

				stmt.setString(1, payment.getCardNo());
				stmt.setString(2,  payment.getExpDate());
				stmt.setInt(3, payment.getCvv());
				stmt.setString(4, payment.getEmail());
				stmt.setInt(5, ID);

				stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// delete payment
		public void deletePayment(int payID) {
			try {
				Connection con = DBConnection.getConnection();
				PreparedStatement stmt = con.prepareStatement(DELETE_PAYMENT);

				stmt.setInt(1, payID);

				stmt.executeUpdate(); 
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// get all payment
		public List<Payment> getAllPayment() {
		    ArrayList<Payment> payments = new ArrayList<>();

		    try {
		        Connection con = DBConnection.getConnection();
		        PreparedStatement stmt = con.prepareStatement(SELECT_ALL_PAYMENTS);
		        ResultSet rs = stmt.executeQuery();

		        while (rs.next()) {
		        	int payID = rs.getInt("payID");
		            String cardNo = rs.getString("cardNo");
		            String expDate = rs.getString("expDate");
		            int cvv = rs.getInt("cvv");
		            String email = rs.getString("email");

		            Payment payment = new Payment(payID,cardNo, expDate, cvv, email);
		            payments.add(payment);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return payments;
		}

}
