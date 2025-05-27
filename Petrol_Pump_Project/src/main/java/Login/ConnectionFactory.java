package Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	static Connection con=null;
public static Connection db_Connection() throws SQLException, ClassNotFoundException  {
    Class.forName("com.mysql.cj.jdbc.Driver"); 

	if(con==null) {
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/petrol_pump", "root", "root");
        return con;
	}
	return con;
	
}
}
