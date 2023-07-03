package govclinic.connection;

import java.sql.*;

public class ConnectionManager {
	static Connection con;
	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_CONNECTION = "jdbc:mysql://localhost/govhealthclinic";
	private static final String DB_USER = "root";
	public static final String DB_PASSWORD = "";
	
	public static Connection getConnection() {
		try {
			//1. load the driver
			Class.forName(DB_DRIVER);
			try {
				//2. create connection
				con = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD);
				System.out.println("Connected");
			}
			catch (SQLException ex) {
				ex.printStackTrace();
			}

		}
		catch  (ClassNotFoundException e) {
			System.out.println(e);
		}
		return con;
	}
}
