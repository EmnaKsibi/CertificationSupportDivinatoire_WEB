package com.sandra.certification;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionFactory {
	
	private static String dbURL="jdbc:mysql://localhost:3306/sandra_db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static String dbUser="root";
	private static String dbPassword="";
	
	public static Connection createConnection()
	{
		 Connection con=null;
		try{
			try {
				   Class.forName("com.mysql.cj.jdbc.Driver");
				}
				catch(ClassNotFoundException ex) {
				   System.err.println("[ErrorDCF] While Creating Connection With Database(unable to load driver class)");
				   System.exit(1);
		       }			
		     con = DriverManager.getConnection(dbURL,dbUser,dbPassword);				   
		     System.out.println("[InfoDCF] Creating Connection With Database ");

		   }
		  catch(SQLException sqe){
			  System.err.println("[ErrorDCF] While Creating Connection With Database");sqe.printStackTrace();
		  }
		return con;
	}

}


