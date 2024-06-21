package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ideaDAO;
import model.Idea;



@WebServlet("/ideaServlet")
public class ideaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ideaServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Idea idea = new Idea();
		
		idea.setName(request.getParameter("name"));
		idea.setEmail(request.getParameter("email"));
		idea.setMessage(request.getParameter("message"));
		idea.setFoodType(request.getParameter("foodType"));
		
		ideaDAO ideaDAo = new ideaDAO();
		ideaDAo.insertIdea(idea);
		
		response.sendRedirect("index.jsp");
	}

}
