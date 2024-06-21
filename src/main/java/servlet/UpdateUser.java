package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.userDAO;
import model.User;


@WebServlet("/updateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateUser() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uID = Integer.parseInt(request.getParameter("uId"));
		
		userDAO FI = new userDAO();
		User fd = new User();	
		fd = FI.selectUser(uID);
		
		
		request.setAttribute("uID",fd.getuID());
		request.setAttribute("name", fd.getName());
		request.setAttribute("address", fd.getAddress());	
		request.setAttribute("email", fd.getEmail());
		request.setAttribute("mobile", fd.getMobile());	
		request.setAttribute("uname", fd.getUname());
//		request.setAttribute("pwd", fd.getPwd());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateUser.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDAO FI = new userDAO();
		User fd = new User();	

//		System.out.println("##########################");
		int uID = Integer.parseInt(request.getParameter("uID"));
//		System.out.println(request.getParameter("uID"));
		String name = request.getParameter("name");
		String address =request.getParameter("address");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String uname = request.getParameter("uname");
//		String pwd = request.getParameter("pwd");
		
		fd.setName(name);
		fd.setAddress(address);
		fd.setEmail(email);
		fd.setMobile(mobile);
		fd.setUname(uname);
//		fd.setPwd(pwd);
		
		
		FI.updateUser(fd,uID);
		
		response.sendRedirect("./listUserServlet");
	}

}
