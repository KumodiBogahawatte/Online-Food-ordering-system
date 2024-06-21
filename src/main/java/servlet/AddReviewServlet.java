package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ReviewDAO;
import interfaces.IReviewDAO;

import model.Review;

@WebServlet("/addReviewServlet")
public class AddReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddReviewServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		Review review = new Review();
		
		review.setName(request.getParameter("name"));
		review.setMobile(request.getParameter("mobile"));
		review.setEmail(request.getParameter("email"));
		review.setMessage(request.getParameter("message"));
		
		IReviewDAO ireviewDAO = new ReviewDAO();
		ireviewDAO.insertReview(review);
		
		response.sendRedirect("./listReviewServlet");

	}

}
