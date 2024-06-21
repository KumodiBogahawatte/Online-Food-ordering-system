package model;

public class Payment {
		private int payID;

		private String cardNo;
		
		private String expDate;
		
		private int cvv;
		
		private String email;

		public Payment() {
			// TODO Auto-generated constructor stub
		}
		
		public Payment(int payID,String cardNo, String expDate, int cvv, String email) {
			super();
			this.payID = payID;
			this.cardNo = cardNo;
			this.expDate = expDate;
			this.cvv = cvv;
			this.email = email;
		}

		public int getPayID() {
			return payID;
		}

		public void setPayID(int payID) {
			this.payID = payID;
		}
		public String getCardNo() {
			return cardNo;
		}

		public void setCardNo(String cardNo) {
			this.cardNo = cardNo;
		}

		public String getExpDate() {
			return expDate;
		}

		public void setExpDate(String expDate) {
			this.expDate = expDate;
		}

		public int getCvv() {
			return cvv;
		}

		public void setCvv(int cvv) {
			this.cvv = cvv;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

}
