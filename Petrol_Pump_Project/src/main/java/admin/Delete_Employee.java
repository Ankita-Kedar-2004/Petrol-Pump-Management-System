
package admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteEmployee")
public class Delete_Employee extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   int id=Integer.parseInt(req.getParameter("id"));
	   DatabaseLogic d=new DatabaseLogic();
	   d.delete_employee(id);

	      RequestDispatcher dispatcher = req.getRequestDispatcher("view_employee");
	        dispatcher.forward(req, resp);
	}

}
