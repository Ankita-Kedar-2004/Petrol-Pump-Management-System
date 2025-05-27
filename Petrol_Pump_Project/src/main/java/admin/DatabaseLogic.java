package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.Statement;

import Employee.Customer;
import Login.ConnectionFactory;

public class DatabaseLogic {

	public boolean adddata(String name, String email, String contact, int sal, String address, int age,String status) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			Connection con=ConnectionFactory.db_Connection();
	        PreparedStatement ps=con.prepareStatement("insert into employee (name,email,contact,sal,address,age,status) values (?,?,?,?,?,?,?)");
	        ps.setString(1, name);
	        ps.setString(2, email);
	        ps.setString(3,contact);
	        ps.setInt(4,sal);
	        ps.setString(5, address);
	        ps.setInt(6,age);
	        ps.setString(7, status);
	        int rs=ps.executeUpdate();
	        
	        PreparedStatement psCheck=con.prepareStatement("insert into petrol_pump.user (email,password,role) values (?,?,?)");
            psCheck.setString(1, email);
            psCheck.setString(2, "employee123");
            psCheck.setString(3, "Employee");
            int rsCheck = psCheck.executeUpdate();
	      
	        System.out.println(rs);
	        }
		catch (Exception e) {
			System.out.println(e);
		}
		return true;
	
	}
	
	public boolean addupdate(String name, String email, String contact, int sal, String address, int age,String status) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			Connection con=ConnectionFactory.db_Connection();
	        PreparedStatement ps=con.prepareStatement("UPDATE employee SET email=?, contact=?, sal=?, address=?, age=?, status=? WHERE name=?");
	       
	        ps.setString(1, email);
	        ps.setString(2, contact);
	        ps.setInt(3, sal);
	        ps.setString(4, address);
	        ps.setInt(5, age);
	       
	        ps.setString(6, status);
	        ps.setString(7, name);
	        int rs=ps.executeUpdate();
	        System.out.println(rs);
	        }
		catch (Exception e) {
			System.out.println(e);
		}
		return true;
	}
	
	public boolean delete_employee(int id) {
		try {		
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			Connection con=ConnectionFactory.db_Connection();
	        PreparedStatement ps=con.prepareStatement("UPDATE employee SET status='Inactive' WHERE eid=?");
	           ps.setInt(1, id);
	        int rs=ps.executeUpdate();
	        System.out.println(rs);
	        }
		catch (Exception e) {
			System.out.println(e);
		}
		return true;
		
	}
	
	
	
	public  List<Employee> selectallEmpolyee() {
		List<Employee> lt=new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from employee");
	           ResultSet rs=ps.executeQuery();
		       while (rs.next()) {
		  Employee e = new Employee(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getInt(7),rs.getString(8));
		      
		       lt.add(e);
		      
		     }  
		       return lt;
		 }
		catch(Exception e) {
			System.out.println(e);
		}
		return lt;
 		
	}
	


	public List<Employee> activeemployee() {
		List<Employee> lt=new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from employee where status='Active'");
	           ResultSet rs=ps.executeQuery();
		       while (rs.next()) {
		  Employee e = new Employee(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getInt(7),rs.getString(8));
		      
		       lt.add(e);
		      System.out.println(rs.getInt(1));
		      System.out.println(rs.getString(2));
		      System.out.println(rs.getString(3));
		      System.out.println(rs.getString(4));
		      System.out.println(rs.getString(5));

		      System.out.println(rs.getString(6));

		     }  
		       return lt;
		 }
		catch(Exception e) {
			System.out.println(e);
		}
		return lt;
	}
	
	public List<Employee> inactiveemployee() {
		List<Employee> lt=new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from employee where status='Inactive'");
	           ResultSet rs=ps.executeQuery();
		       while (rs.next()) {
		  Employee e = new Employee(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getInt(7),rs.getString(8));
		      
		       lt.add(e);
		      
		     }  
		       return lt;
		 }
		catch(Exception e) {
			System.out.println(e);
		}
		return lt;
	}
	
	

	
	public boolean delete_machine(int id) {
		try {		
		Class.forName("com.mysql.cj.jdbc.Driver"); 
		Connection con=ConnectionFactory.db_Connection();
        PreparedStatement ps=con.prepareStatement("DELETE FROM machine WHERE mid = ?");
       
        ps.setInt(1, id);
        int rs=ps.executeUpdate();
        System.out.println(rs);
        }
	catch (Exception e) {
		System.out.println(e);
	}
	return true;}

	public  List<Machine> selectallMachine() {
		List<Machine> lt=new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	           PreparedStatement ps=con.prepareStatement("select * from machine");
	           ResultSet rs=ps.executeQuery();
		       while (rs.next()) {
		    	   Machine m = new Machine(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
		      
		       lt.add(m);
		      
		     }  
		       return lt;
		 }
		catch(Exception e) {
			System.out.println(e);
		}
		return lt;
 		
	}
	
	public void addMachine(String machineCode, String fuelType, String capacity) {
		// TODO Auto-generated method 
		try {
		Class.forName("com.mysql.cj.jdbc.Driver"); 
	     Connection con=ConnectionFactory.db_Connection();
          PreparedStatement ps=con.prepareStatement("insert into machine (machinecode,fuelType,capacity) values(?,?,?)");
          ps.setString(1, machineCode);
          ps.setString(2, fuelType);
              ps.setString(3, capacity);
          int rs=ps.executeUpdate();
	        }

	catch(Exception e) {
		System.out.println(e);
	}
	
		
	}

	public void show_allocation( String id,String name,String code, String start, String end, String date) {
		try {
			System.out.println(id);
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	          PreparedStatement ps=con.prepareStatement("insert into allocation (eid,machinecode,startTime,endTime,date,name) values(?,?,?,?,?,?)");
	          ps.setString(1, id);
	          ps.setString(2, code);
	          ps.setString(3, start);
	              ps.setString(4, end);
	              ps.setString(5, date);
	              ps.setString(6, name);
	          int rs=ps.executeUpdate();
		        }

		catch(Exception e) {
			System.out.println(e);
		}
		
	}

	public List<Customer> viewcollection(String date) {
		List <Customer> customer=new ArrayList<Customer>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
		     Connection con=ConnectionFactory.db_Connection();
	          PreparedStatement ps=con.prepareStatement("select * from customer where date=?");
	          ps.setString(1, date);
	          ResultSet rs=ps.executeQuery();
		       while (rs.next()) {
		  Customer c = new Customer(rs.getInt(1),rs.getString(2),rs.getFloat(3),rs.getDate(4),rs.getString(5),rs.getFloat(6),rs.getString(7));
		       customer.add(c);
		       } 
		        return customer;
		        }

		catch(Exception e) {
			System.out.println(e);
		}
		return customer;
	}
}

