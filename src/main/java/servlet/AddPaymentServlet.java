package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PaymentDAO;
import interfaces.IPaymentDAO;
import model.Payment;

/**
 * Servlet implementation class AddPaymentServlet
 */
@WebServlet("/addPaymentServlet")
public class AddPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddPaymentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		Payment payment = new Payment();
		
		payment.setCardNo(request.getParameter("cardNo"));
		payment.setExpDate(request.getParameter("expDate"));
		payment.setCvv(Integer.parseInt(request.getParameter("cvv")));
		payment.setEmail(request.getParameter("email"));
		
		IPaymentDAO iPaymentDAO = new PaymentDAO();
		iPaymentDAO.insertPayment(payment);
		
		response.sendRedirect("./listPaymentServlet");

	}

}
