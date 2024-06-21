package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FoodDAO;
import interfaces.IFoodDAO;
import model.Food;


@WebServlet("/AddFoodServlet")
public class AddFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddFoodServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Food food = new Food();
		
		food.setfName(request.getParameter("fName"));
		food.setfPrice(Double.parseDouble(request.getParameter("fPrice")));
		food.setfDescription(request.getParameter("fDescription"));
		
		IFoodDAO iFoodDAO = new FoodDAO();
		iFoodDAO.insertFood(food);
		
		response.sendRedirect("./listFoodServlet");

		}

}
