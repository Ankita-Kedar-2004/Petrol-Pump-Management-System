package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/active_employee")
public class Active_Employee extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 // Initialize the database logic class
    DatabaseLogic dbLogic = new DatabaseLogic();
    List<Employee> emp=dbLogic.activeemployee();
    req.setAttribute("all", emp);
    // Forward the request to the JSP for rendering
    RequestDispatcher dispatcher = req.getRequestDispatcher("Active_Employee.jsp");
    dispatcher.include(req, resp);
}
}
