package com.sandra.certification;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Helper {

	
	
	/***************************************************************************
	 * counting the rows of the registered formateurs/voyants
	 * 
	 * *************************************************************************/
	public int getCountOfUsers(String droit)
	{
  		StringBuilder sql =new StringBuilder("SELECT count(id) FROM  users ");	
  		if (droit !=null && !droit.trim().equals(""))  {
  			sql.append(" where ").append(" droit ='").append(droit.trim()).append("' ");;
  		}  	
		int count = 0;
		
		Connection con=DatabaseConnectionFactory.createConnection();
		
		try
		{
			PreparedStatement ps = con.prepareStatement(sql.toString());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
			count = rs.getInt(1);	
			}
		}catch(SQLException sqe){
			System.err.println("[ErrorH] While counting record in database_getCountOfUser");
			}
		try
		{
		 con.close();	
		}catch(SQLException se){
			System.err.println("[ErrorH] While Closing Connection_getCountOfUser");
			
		}
		
		System.out.println("[InfoH] Counting ["+droit+"]="+count);
		return count;
     	}
	
	
	
	/***************************************************************************
	 * counting the rows of the registered RESULTS depending on the id
	 * 
	 * *************************************************************************/
	public int getCountOfResult(String matricule,String levelToCheck)
	{
		StringBuilder  sql=new StringBuilder("SELECT COUNT(rid) FROM  result");
  		if (matricule !=null && !matricule.trim().equals(""))
  			sql.append(" where ").append(" matricule ='").append(matricule.trim()).append("' and examLevel ='").append(levelToCheck.trim()).append("' ");;
		int count = 0;
		
		Connection con=DatabaseConnectionFactory.createConnection();
	
		try
		{
			PreparedStatement ps = con.prepareStatement(sql.toString());
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
			count = rs.getInt(1);	
			}
		}catch(SQLException sqe){
			System.err.println("[ErrorH] While Selecting Record From Database_getCountOfResult");
			}
		try
		{
		 con.close();	
		 System.out.println("[InfoH] Closing Connection With Database_getCountOfResult");

		}catch(SQLException se){
			System.err.println("[ErrorH] While Closing Connection_getCountOfResult");
			
		}
		System.out.println("[InfoH] Counting Result:["+count+"] matricule:["+matricule+"] level:["+levelToCheck+"] ");

		return count;
     	}
	
	
	/***************************************************************************
	 * counting the rows of the registered users 
	 * 
	 * *************************************************************************/
	public int getCountOfFeedback()
	{
		StringBuilder sql =new StringBuilder("SELECT count(fid) FROM  feedback ");
  	
		int count = 0;
		
		Connection con=DatabaseConnectionFactory.createConnection();
		
		try
		{
			PreparedStatement ps = con.prepareStatement(sql.toString());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
			count = rs.getInt(1);	
			}
		}catch(SQLException sqe){
			System.err.println("[ErrorH] While counting record in database_getCountOfFeedback");
			}
		try
		{
		 con.close();	
		}catch(SQLException se){
			System.err.println("[ErrorH] While Closing Connection_ggetCountOfFeedback");
			
		}
		
		System.out.println("[InfoH] Counting Feedback = "+count);
		return count;
     	}
	
	
	
	
	/*********************************************
	 * creating the LIST of the registered results 
	 * 
	 * ******************************************/
	
	public java.util.List<ResultModel> getListOfResult(String sql)
	{

		List<ResultModel> list = new ArrayList<ResultModel>();
		Connection con=DatabaseConnectionFactory.createConnection();
		
		try
		{
			PreparedStatement ps = con.prepareStatement(sql.toString());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
			list.add(new ResultModel(chkNull(rs.getString("rid")), chkNull(rs.getString("matricule")), chkNull(rs.getString("username")), 
					chkNull(rs.getString("examName")),chkNull(rs.getString("examLevel")), chkNull(rs.getString("nbOfQuestion")), chkNull(rs.getString("status")), chkNull(rs.getString("nbCorrectAnswer")),chkNull(rs.getString("startTime"))))	;
			}
		}catch(SQLException sqe){
			System.err.println("[ErrorH] While Selecting Record From Database_getListOfResult");
			}
		try
		{
		 con.close();
		 System.out.println("[InfoH] Closing Connection With Database_getListOfResult");

		}catch(SQLException se){
			System.err.println("[ErrorH] While Closing Connection_getListOfResult");
			
		}
		return list;
     	}
	
	
	
	
	
	/*********************************************
	 * creating the LIST of the registered users and formateurs in the same time!
	 * 
	 * ******************************************/	
	public java.util.List<UsersModel> getListOfUsers(String sql)
	{

		List<UsersModel> list = new ArrayList<UsersModel>();
		Connection con=DatabaseConnectionFactory.createConnection();
		
		try
		{
			PreparedStatement ps = con.prepareStatement(sql.toString());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				list.add(new UsersModel(chkNull(rs.getString("id")), chkNull(rs.getString("matricule")), chkNull(rs.getString("username")), 
						chkNull(rs.getString("password")), chkNull(rs.getString("droit"))));
			}
		}catch(SQLException sqe){
			System.err.println("[ErrorH] While Selecting Record From Database_getListOfUsers");
			}
		try
		{
		 con.close();	
		 System.out.println("[InfoH] Closing Connection With Database_getListOfUsers");

		}catch(SQLException se){
			System.err.println("[ErrorH] While Closing Connection_getListOfUsers");
			
		}
		return list;
     	}
	
	
	
	
	
	/*********************************************
	 * creating the LIST of the registered feedback 
	 * 
	 * ******************************************/	
	public java.util.List<FeedbackModel> getListOfFeedback(String sql)
	{

		List<FeedbackModel> list = new ArrayList<FeedbackModel>();
		Connection con=DatabaseConnectionFactory.createConnection();
		
		try
		{
			PreparedStatement ps = con.prepareStatement(sql.toString());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				list.add(new FeedbackModel(chkNull(rs.getString("fid")), chkNull(rs.getString("matricule")), chkNull(rs.getString("username")), 
						chkNull(rs.getString("comment"))));
			}
		}catch(SQLException sqe){
			System.err.println("[ErrorH] While Selecting Record From Database_getListOfFeedback");
			}
		try
		{
		 con.close();	
		 System.out.println("[InfoH] Closing Connection With Database_getListOfFeedback");

		}catch(SQLException se){
			System.err.println("[ErrorH] While Closing Connection_getListOfFeedback");
			
		}
		return list;
     	}
	
	
	
	
	
	

	
	
	/*********************************************
	 * check the string is not null
	 * 
	 * ******************************************/
	public static String chkNull(String obj) {
		return obj != null ? obj.trim() : "";
	}
}



