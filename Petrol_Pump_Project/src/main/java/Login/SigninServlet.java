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

@WebServlet("/signup")
public class SigninServlet extends HttpServlet{
	
	   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        // Retrieve parameters
	        String email = req.getParameter("email");
	        String password = req.getParameter("password");
	        String role = req.getParameter("role");
	        System.out.println(role);
	      DatabaseLogic d=new DatabaseLogic();
	      int result=d.insertLogin(email, password,role);
	      System.out.println(result);
	      RequestDispatcher rd= req.getRequestDispatcher("Login.jsp");
          rd.include(req, resp);
	   }
}
