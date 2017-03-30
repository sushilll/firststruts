package firststruts;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dao {
	
	public static Connection getConnection() {
		Connection con = null;
		 URI dbUri;
		try {
			dbUri = new URI(System.getenv("DATABASE_URL"));
		

		    String username = dbUri.getUserInfo().split(":")[0];
		    String password = dbUri.getUserInfo().split(":")[1];
		    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

//	    String dbUrl = System.getenv("JDBC_DATABASE_URL");
	    	con = DriverManager.getConnection(dbUrl, username, password);
//			con = DriverManager.getConnection(dbUrl);
			System.out.println("method called");
		} catch (SQLException | URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return con;
	}
}
