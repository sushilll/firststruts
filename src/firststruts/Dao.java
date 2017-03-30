package firststruts;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dao {
	
	public static Connection getConnection() {
		Connection con = null;
	    String dbUrl = System.getenv("JDBC_DATABASE_URL");
	    try {
			con = DriverManager.getConnection(dbUrl);
			System.out.println("method called");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return con;
	}
}
