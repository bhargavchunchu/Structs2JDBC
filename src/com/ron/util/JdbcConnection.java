package com.ron.util;

import java.sql.*;

public class JdbcConnection {
		
	private static Connection conn = null;
	
	public static Connection getConnection(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn =  DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg", "root", "root");	
		}catch(Exception ex){
			System.out.println("Problem Occured while getting connection to the Database = " + ex.getMessage());
		}
		return conn;
	}
	
	public static void CloseConnection(){
		try{
			if(conn != null){
				conn.close();
			}
		}catch(Exception ex){
			System.out.println("Problem Occured while Closing the connection to the Database");
		}
	}
}