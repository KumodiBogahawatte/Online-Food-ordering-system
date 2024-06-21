package interfaces;

import model.Payment;

public interface IPaymentDAO {

	public void insertPayment(Payment payment);
	
	public Payment selectPayment(int payID);
	
	public void updatePayment(Payment payment,int ID);
	public void deletePayment(int payID);

}
