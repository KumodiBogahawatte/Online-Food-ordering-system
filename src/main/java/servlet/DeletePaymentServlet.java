package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PaymentDAO;

/**
 * Servlet implementation class DeletePaymentServlet
 */
@WebServlet("/deletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {

    public DeletePaymentServlet() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int payID = Integer.parseInt(request.getParameter("paymentID"));
		
		PaymentDAO paymentDAO = new PaymentDAO();
		paymentDAO.deletePayment(payID);
		response.sendRedirect("./listPaymentServlet");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
