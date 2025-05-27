package Employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.Machine;

@WebServlet("/view_customer")
public class View_Customer  extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	DatabaseLogin d=new DatabaseLogin();
	  List<Customer> customer = d.allcustomer();
	 
      req.setAttribute("all", customer);
      
      RequestDispatcher dispatcher = req.getRequestDispatcher("View_Customer.jsp");
      dispatcher.include(req, resp);
}
}
