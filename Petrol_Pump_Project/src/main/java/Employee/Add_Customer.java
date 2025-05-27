package Employee;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add_customer")
public class Add_Customer  extends HttpServlet{

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
		
		Float total=Float.parseFloat(req.getParameter("totalliters"));
        
		String fuelType=req.getParameter("fuelType");
		Float totalAmount=Float.parseFloat(req.getParameter("totalAmount"));
		String date = req.getParameter("currentDate");
		String payment=req.getParameter("Payment");
		
		DatabaseLogin d=new DatabaseLogin();
		d.customer(total, fuelType, totalAmount, date, email,payment);
		
		 RequestDispatcher dispatcher = req.getRequestDispatcher("/view_customer");
	      dispatcher.include(req, resp);
	        }
	}
}

