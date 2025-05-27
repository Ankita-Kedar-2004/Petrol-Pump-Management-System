package Login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve parameters
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");
      DatabaseLogic d=new DatabaseLogic();
      int result=d.checkdata(email, password,role);
    
      Cookie ck= new Cookie("email", email);
	  resp.addCookie(ck);
	  req.setAttribute("email", email);
      
      if(result>=1) {
    	
          if(role.equals("Admin")) {
        	  RequestDispatcher rd= req.getRequestDispatcher("Admin_Dashbord.jsp");
              rd.include(req, resp);
          }
          else {
        	  RequestDispatcher rd= req.getRequestDispatcher("Employee_Dashbord.jsp");
              rd.include(req, resp);
          }
      }
   
    	 else {
//    		 d.insertdata(email,password,role);
    		 req.setAttribute("error", "Enter Valid Field");
             RequestDispatcher rd= req.getRequestDispatcher("Login.jsp");
             rd.include(req, resp);
    	 }
      }
      
       

        
    }

