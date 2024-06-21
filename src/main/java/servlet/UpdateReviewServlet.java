package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ReviewDAO;

import model.Review;

/**
 * Servlet implementation class UpdateReviewServlet
 */
@WebServlet("/updateReviewServlet")
public class UpdateReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateReviewServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rid = Integer.parseInt(request.getParameter("reviewId"));
		
		ReviewDAO FI = new ReviewDAO();
		Review fd = new Review();	
		fd = FI.selectReview(rid);
		
		
		request.setAttribute("rid",fd.getRid());
		request.setAttribute("name", fd.getName());
		request.setAttribute("mobile", fd.getMobile());	
		request.setAttribute("email", fd.getEmail());
		request.setAttribute("message", fd.getMessage());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateReview.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewDAO FI = new ReviewDAO();
		Review fd = new Review();	
		
//		System.out.println("#################################################");
		int ID = Integer.parseInt(request.getParameter("rid"));
		
//		System.out.println(request.getParameter("foodId"));
		String name = request.getParameter("name");
		String mobile =request.getParameter("mobile");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		fd.setName(name);
		fd.setMobile(mobile);
		fd.setEmail(email);
		fd.setMessage(message);
		
		FI.updateReview(fd,ID);
		
		response.sendRedirect("./listReviewServlet");
	}

}
