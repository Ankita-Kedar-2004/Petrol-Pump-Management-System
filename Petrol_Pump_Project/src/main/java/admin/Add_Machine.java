package admin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add_machine")
public class Add_Machine extends HttpServlet {

 @Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  String machineCode = req.getParameter("code");
      String fuelType = req.getParameter("fuelType"); 
      String capacity = req.getParameter("capacity");
		
      DatabaseLogic dbLogic = new DatabaseLogic();
      dbLogic.addMachine(machineCode, fuelType, capacity);
		      
      RequestDispatcher rd = req.getRequestDispatcher("/view_machine");
      rd.forward(req, resp); 

}
}
