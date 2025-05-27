package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/allocated_Machine")
public class Get_Machine_For_Allocation extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          DatabaseLogic d=new DatabaseLogic();
          
          List<Machine> machines = d.selectallMachine();
          
          // Set the machines list as a request attribute
          req.setAttribute("all", machines);
          
          RequestDispatcher dispatcher = req.getRequestDispatcher("Allocated_Machine.jsp");
          dispatcher.forward(req, resp);
	}

}
