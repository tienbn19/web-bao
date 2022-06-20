/*
 * package dal;
 * 
 * import java.io.PrintWriter; import java.sql.Connection; import
 * java.sql.DriverManager; import java.sql.SQLException;
 * 
 * public class DBConnect { protected Connection connection;
 * 
 * public DBConnect() { try { // Edit URL , username, password to authenticate
 * with your MS SQL Server String url =
 * "jdbc:sqlserver://localhost:1433;databaseName=demo"; String username = "sa";
 * String password = "123456";
 * Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); connection =
 * DriverManager.getConnection(url, username, password); } catch
 * (ClassNotFoundException | SQLException ex) { System.out.println(ex); } }
 * 
 * public static void main(String[] args) { DBConnect connect = new DBConnect();
 * System.out.println(connect.connection); } }
 */

package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//  import javax.annotation.Resource; 
import javax.sql.DataSource;

public class DBConnect {
	protected Connection connection;

	public DBConnect() {

		try {

			String url = "jdbc:mysql://localhost:3306/demo";
			String USER_NAME = "root";
			String PASSWORD = "123456";

			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url, USER_NAME, PASSWORD);
			System.out.println(connection);

		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Error");
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		DBConnect dbConnect = new DBConnect();
	}
}
