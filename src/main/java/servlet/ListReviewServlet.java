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

import DAO.ReviewDAO;
import model.Review;

@WebServlet("/listReviewServlet")
public class ListReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListReviewServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Review> reviewList = new ArrayList<>();
		ReviewDAO fl = new ReviewDAO();
		reviewList =  fl.getAllReviews();
		
		request.setAttribute("reviewList", reviewList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ListReview.jsp");
		dispatcher.forward(request, response);
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
