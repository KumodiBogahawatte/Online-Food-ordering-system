package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PaymentDAO;

import model.Payment;

/**
 * Servlet implementation class UpdatePaymentServlet
 */
@WebServlet("/updatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdatePaymentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int payID = Integer.parseInt(request.getParameter("paymentId"));
		
		PaymentDAO FI = new PaymentDAO();
		Payment fd = new Payment();	
		fd = FI.selectPayment(payID);
		
		
		request.setAttribute("payID",fd.getPayID());
		request.setAttribute("cardNo", fd.getCardNo());
		request.setAttribute("expDate", fd.getExpDate());
		request.setAttribute("cvv", fd.getCvv());	
		request.setAttribute("email", fd.getEmail());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("updatePayment.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaymentDAO FI = new PaymentDAO();
		Payment fd = new Payment();	
		
//		System.out.println("#################################################");
		int ID = Integer.parseInt(request.getParameter("payID"));
		
//		System.out.println(request.getParameter("payID"));
		String cardNo = request.getParameter("cardNo");
		String expDate = request.getParameter("expDate");
		int cvv = Integer.parseInt(request.getParameter("cvv"));
		String email = request.getParameter("email");
		
		fd.setCardNo(cardNo);
		fd.setExpDate(expDate);
		fd.setCvv(cvv);
		fd.setEmail(email);
		
		FI.updatePayment(fd,ID);
		
		response.sendRedirect("./listPaymentServlet");
	}

}
