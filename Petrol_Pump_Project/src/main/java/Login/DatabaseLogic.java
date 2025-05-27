package Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Login.ConnectionFactory;

public class DatabaseLogic {

	Connection con;
	public int checkdata(String email,String password,String role) {
		  try {
	        	   // Load the MySQL driver and establish a connection
	            Connection con=ConnectionFactory.db_Connection();
	            // Check if the email already exists
	            PreparedStatement psCheck = con.prepareStatement("SELECT  COUNT(*) FROM petrol_pump.user WHERE email = ? AND password=? AND role=?");
	            psCheck.setString(1, email);
	            psCheck.setString(2, password);
	            psCheck.setString(3, role);
	            ResultSet rsCheck = psCheck.executeQuery();

	            rsCheck.next();
	            return rsCheck.getInt(1);    
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		  return 0;
	}
	public int insertLogin(String email, String password, String role) {
	    try {
	        // Load the MySQL driver and establish a connection
	        Connection con = ConnectionFactory.db_Connection();

	        PreparedStatement psCheck=con.prepareStatement("insert into petrol_pump.user (email,password,role) values (?,?,?)");
            psCheck.setString(1, email);
            psCheck.setString(2, password);
            psCheck.setString(3, role);
            int rsCheck = psCheck.executeUpdate();
	      
	        System.out.println(rsCheck);
	        return 1; // typically 1 if insert successful

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return 0; // return 0 if insertion failed
	}
	}

