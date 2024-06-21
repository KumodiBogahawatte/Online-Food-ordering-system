package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FoodDAO;
import model.Food;

/**
 * Servlet implementation class UpdateFoodServlet
 */
@WebServlet("/updateFoodServlet")
public class UpdateFoodServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int foodID = Integer.parseInt(request.getParameter("foodId"));
		
		FoodDAO FI = new FoodDAO();
		Food fd = new Food();	
		fd = FI.selectFood(foodID);
		
		
		request.setAttribute("foodID",fd.getFoodID());
		request.setAttribute("fName", fd.getfName());
		request.setAttribute("fPrice", fd.getfPrice());	
		request.setAttribute("fDescription", fd.getfDescription());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateFood.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FoodDAO FI = new FoodDAO();
		Food fd = new Food();	
		
//		System.out.println("#################################################");
		int ID = Integer.parseInt(request.getParameter("foodID"));
		
//		System.out.println(request.getParameter("foodId"));
		String fName = request.getParameter("fName");
		double fPrice =Double.parseDouble(request.getParameter("fPrice"));
		String fDescription = request.getParameter("fDescription");
		
		fd.setfName(fName);
		fd.setfPrice(fPrice);
		fd.setfDescription(fDescription);
		
		FI.updateFood(fd,ID);
		
		response.sendRedirect("./listFoodServlet");
		
	}

}
