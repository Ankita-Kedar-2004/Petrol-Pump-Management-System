package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/allocate_machine")
public class Allocate_Machine extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	DatabaseLogic d= new DatabaseLogic();
	 List<Employee> emp=d.selectallEmpolyee();
     req.setAttribute("all", emp);
     
     RequestDispatcher dispatcher = req.getRequestDispatcher("Allocate_Machine.jsp");
     dispatcher.forward(req, resp);
	}
	

}
