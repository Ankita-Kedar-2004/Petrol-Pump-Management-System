package admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update_employee")
public class Update_Employee extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String contact=req.getParameter("contact");
		String status=req.getParameter("status");
	
		int sal=Integer.parseInt(req.getParameter("sal"));
		String address=req.getParameter("address");
		int age=Integer.parseInt(req.getParameter("age"));
		
		   DatabaseLogic d=new DatabaseLogic();
		      boolean result=d.addupdate(name,email,contact,sal,address,age,status);
		      RequestDispatcher dispatcher = req.getRequestDispatcher("view_employee");
		      dispatcher.include(req, resp);
		
	}
    
}
