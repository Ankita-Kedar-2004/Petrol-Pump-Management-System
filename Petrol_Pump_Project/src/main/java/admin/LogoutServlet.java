package admin;

	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.Cookie;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	@WebServlet("/logout")
	public class LogoutServlet extends HttpServlet {
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        // Find the login/auth cookie and set its max age to 0 to delete it
	        Cookie[] cookies = request.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if ("email".equals(cookie.getName())) { // use your actual cookie name
	                    cookie.setMaxAge(0); // expire the cookie
	                    cookie.setPath("/"); // match the path used when creating the cookie
	                    response.addCookie(cookie);
	                }
	            }
	        }

	        // Redirect to login page
	        response.sendRedirect("Login.jsp"); // or your login page
	    }
	}


