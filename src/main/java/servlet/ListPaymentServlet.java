package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PaymentDAO;

import model.Payment;

/**
 * Servlet implementation class ListPaymentServlet
 */
@WebServlet("/listPaymentServlet")
public class ListPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListPaymentServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Payment> paymentList = new ArrayList<>();
		PaymentDAO fl = new PaymentDAO();
		paymentList =  fl.getAllPayment();
		
		request.setAttribute("paymentList", paymentList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ListPayment.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		response.setContentType("text/html");
	}

}
