package Employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view_customer_employeewise")
public class View_Customer_Employeewise  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		   Cookie[] cookies = req.getCookies();
	        String email =null;
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	               
	                if ("email".equals(cookie.getName())) {
	                   email = cookie.getValue();
	                    break; 
	                }
	            }
		
		DatabaseLogin d=new DatabaseLogin();
		  List<Customer> customer = d.allcustomerEmployeewise(email);
		 
	      req.setAttribute("all", customer);
	      
	      RequestDispatcher dispatcher = req.getRequestDispatcher("View_Customer.jsp");
	      dispatcher.include(req, resp);
	}
	}
	}
