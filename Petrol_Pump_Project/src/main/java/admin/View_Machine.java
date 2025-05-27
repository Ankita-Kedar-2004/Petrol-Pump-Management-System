package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view_machine")
public class View_Machine extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
        DatabaseLogic dbLogic = new DatabaseLogic();
        
      
            List<Machine> machines = dbLogic.selectallMachine();
            
            req.setAttribute("all", machines);
            
            RequestDispatcher dispatcher = req.getRequestDispatcher("View_Machine.jsp");
            dispatcher.forward(req, resp);
    }
}
