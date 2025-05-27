package admin;

import java.io.IOException;
import java.security.Provider.Service;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Employee.Customer;

@WebServlet("/view_collection")
public class View_Collection extends HttpServlet {
 
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String date=req.getParameter("date");
   
    DatabaseLogic d=new DatabaseLogic();
   List<Customer> customer=d.viewcollection(date);
   
   req.setAttribute("all", customer);
   
   RequestDispatcher dispatcher = req.getRequestDispatcher("View_Collection.jsp");
   dispatcher.include(req, resp);
}

}
