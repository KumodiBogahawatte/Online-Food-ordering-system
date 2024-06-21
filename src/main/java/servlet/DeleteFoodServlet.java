package servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FoodDAO;
import interfaces.IFoodDAO;

@WebServlet("/deleteFoodServlet")
public class DeleteFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteFoodServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int foodID = Integer.parseInt(request.getParameter("foodID"));
		
		IFoodDAO iFoodDAO = new FoodDAO();
		iFoodDAO.deleteFood(foodID);
		response.sendRedirect("./listFoodServlet");
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

	}

}
