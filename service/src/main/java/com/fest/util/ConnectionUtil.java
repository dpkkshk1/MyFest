package com.fest.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.fest.exception.FestException;
public class ConnectionUtil {

	public ConnectionUtil() {
		// TODO Auto-generated constructor stub
	}
	public static Connection getConnection() throws FestException {
		Connection connObj = null;

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			connObj = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyFest", "root", "root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new FestException("Error in connection Extablishment : " + e.getMessage());
		}
		if (connObj != null) {
			System.out.println("We got connection");
		} else {
			System.out.println("No Conection");
		}
		return connObj;
	}

}
