package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/allocate")
public class Allocated extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String code=req.getParameter("machine");
		String start=req.getParameter("startTime");
		String end=req.getParameter("endTime");
		String date=req.getParameter("date");
		
		
		DatabaseLogic d=new DatabaseLogic();
		d.show_allocation(id ,name,code,start,end,date);
	}

}
