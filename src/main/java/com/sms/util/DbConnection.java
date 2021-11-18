package com.sms.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	//load the driver
	//get the connection
	//create the statements - sql query
	//execute get result
	//close the connection
	private static Connection con = null;
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manage_student","root","Aman123@");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
		
	}
	