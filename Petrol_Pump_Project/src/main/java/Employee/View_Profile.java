package Employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.Employee;

@WebServlet("/view_profile")
public class View_Profile extends HttpServlet {
    @Override
    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
            Employee e= d.view_profile(email);
            req.setAttribute("emp", e);
            RequestDispatcher rd=req.getRequestDispatcher("View_Profile.jsp");
            rd.include(req, resp);
        } else {
            resp.getWriter().write("No cookies found.");
        }
    }
}
