package Employee;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Login.ConnectionFactory;
import admin.Employee;
import admin.Machine;

public class DatabaseLogin {

	public Employee view_profile(String email) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from employee where email=?");
	          ps.setString(1, email);
	           ResultSet rs=ps.executeQuery();
	           rs.next();
	 		  Employee e = new Employee(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getInt(7),rs.getString(8));
	        return e;
		 }
		catch(Exception e) {
			System.out.println(e);
		}
		return null;
	
		
	}

	public boolean customer(Float totalliters, String fuelType, Float totalAmount,String date, String email,String payment) {
		
		System.out.println(totalliters+" "+fuelType+" "+totalAmount+" "+date+" "+email+" "+payment);
		try {
			
			
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			Connection con=ConnectionFactory.db_Connection();
			 
	        PreparedStatement ps=con.prepareStatement("INSERT INTO customer( fuelType, totalAmount, date, email,fuelliters,payment) VALUES (?, ?, ?, ?, ?,?)");
	       
	        ps.setString(1, fuelType);
	        ps.setFloat(2,totalAmount);
	        ps.setString(3,date);
	        ps.setString(4, email);
	        ps.setFloat(5, totalliters);
	        ps.setString(6, payment);
	       
	        int rs=ps.executeUpdate();
	      
	        System.out.println(rs);
	        }
		catch (Exception e) {
			System.out.println(e);
		}
		return true;
	}

	

	public List<Customer> allcustomer() {
		List<Customer> lt=new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from customer");
	           ResultSet rs=ps.executeQuery();
		       while (rs.next()) {
		    	   Customer c = new Customer(rs.getInt(1),rs.getString(2),rs.getFloat(3),rs.getDate(4),rs.getString(5),rs.getFloat(6),rs.getString(7));
		    	   
		    	   lt.add(c);
		        }  
		     return lt;
		 }
		catch(Exception e) {
			System.out.println(e);
		}
		return lt;
	}

	public List<Allocation> view_allocation(String date) {
	List <Allocation> lt=new ArrayList<Allocation>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from allocation where date=?");
		          ps.setString(1, date);
		          ResultSet rs=ps.executeQuery();
		        
		        while(rs.next()) {
		    	   Allocation  a = new Allocation(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
		       lt.add(a);
		        }
		    	 return lt;  
		   }
		catch(Exception e) {
			System.out.println(e);
		}
		return null;
		
	}

	public List<Customer> allcustomerEmployeewise(String email) {
		List<Customer> lt=new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from customer where email=?");
	           ps.setString(1, email);
	           ResultSet rs=ps.executeQuery();
		       while (rs.next()) {
		    	   Customer c = new Customer(rs.getInt(1),rs.getString(2),rs.getFloat(3),rs.getDate(4),rs.getString(5),rs.getFloat(6),rs.getString(7));
		    	   
		    	   lt.add(c);
		        }  
		     return lt;
		 }
		catch(Exception e) {
			System.out.println(e);
		}
		return lt;
	}

}
