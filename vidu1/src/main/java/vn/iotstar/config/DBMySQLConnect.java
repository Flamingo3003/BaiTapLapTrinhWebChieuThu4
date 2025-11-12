package vn.iotstar.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBMySQLConnect {
   private static Connection con = null;
   private static String USERNAME = "root";
   private static String PASSWORD = "12345678";
   private static String DRIVER = "com.mysql.cj.jdbc.Driver";
   private static String URL = "jdbc:mysql://localhost:3306/iotstar";

   public static Connection getDatabaseConnection() throws SQLException, Exception{
       
       try {
    	   Class.forName(DRIVER);
		return con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   
   public static void main(String[] args) {
	   try {
		   new DBMySQLConnect();
		   System.out.println(DBMySQLConnect.getDatabaseConnection());
		   
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}
}