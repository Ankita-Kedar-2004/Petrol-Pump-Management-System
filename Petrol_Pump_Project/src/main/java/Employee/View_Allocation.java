package Employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.Employee;

@WebServlet("/show_allocation")
public class View_Allocation  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   String date=req.getParameter("date");
		
		DatabaseLogin d= new DatabaseLogin();
		 List<Allocation> a=d.view_allocation(date);
         req.setAttribute("all", a);
         
         RequestDispatcher rd=req.getRequestDispatcher("View_Allocation.jsp");
         rd.include(req, resp);
	}

}
