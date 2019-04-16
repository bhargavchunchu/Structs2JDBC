package com.ron.DaoImple;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.ron.Dao.Dao;
import com.ron.Model.Employee;

import com.ron.util.JdbcConnection;

public class DaoImplementation implements Dao{

	private	Connection conn = (Connection)JdbcConnection.getConnection(); 
	private ResultSet resultSet = null;
	private Statement stmt = null;
	private Employee emp = new Employee();
	private String sql_query;
	private PreparedStatement pstmt = null;
	
	@Override
	public boolean addEmployee(Employee employee) {
		boolean status = false;
		//String s=employee.getName();
		//System.out.println(s);
		
		if(employee!=null){
		    sql_query = "INSERT INTO searchengg.user VALUES(?,?,?,?,?)";		
		try {
			pstmt = conn.prepareStatement(sql_query);
			pstmt.setString(1, employee.getName());
			pstmt.setString(2, employee.getEmail());
			pstmt.setString(3, employee.getPassword());
			pstmt.setString(4, employee.getPhoneno());
			pstmt.setString(5, employee.getStatus());
			status =  pstmt.execute();
			
			System.out.println("Value of status in addEmployee = " + status);
			status=true;
			conn.close();
		} catch (SQLException e) {
			System.out.println("Problem Occured while inserting Employee");
			e.printStackTrace();
		}
		
		}else{
			System.out.println("Please provide valid employee to add");
		}
		
		return status;
		
	}
	
	
	
	
	@Override
	public int getEmployee(Employee employee){
		int status1 = 0;
		List<Employee> elist = getAllEmployee();
		if(employee!=null){
			Iterator<Employee> EmployeeIterator = elist.iterator();
			
			while(EmployeeIterator.hasNext()){
				emp = EmployeeIterator.next();
				if(employee.getEmail().equals(emp.getEmail())){
					System.out.println("Username is not Available!!!");
					return 0;					
				}
			}
		}
			//Connection conn1 = (Connection)JdbcConnection.getConnection();
			//sql_query = ("SELECT email_id,password,status from searchengg.user ");
			//sql_query ="SELECT * FROM searchengg.user where email_id='"+employee.getEmail()+"'+ password='"+employee.getPassword()+"' and status='"+employee.getStatus();
			//System.out.println(sql_query);
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				
				PreparedStatement ps=con.prepareStatement("select email_id,password,status from user");  
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next()){
				//	emp.setName(resultSet.getString(1));
					//emp.setEmail(resultset.getString("email_id"));
				//	emp.setPassword(resultset.getString("password"));
					//emp.setPhoneno(resultSet.getString(4));
				//	emp.setStatus(resultset.getString("status"));
					String emailid=resultset.getString("email_id");
					String pass=resultset.getString("password");
					String stat=resultset.getString("status");
					System.out.println(employee.getEmail()+"**EMAIL**"+emailid+ employee.getPassword()+"+++PASS+++"+pass+"+++++STAT+++"+stat);
					// emp.getemail looo email foem nunchii get avvadhum ledhuu
				
				
				if(employee.getEmail().equals(emailid) && employee.getPassword().equals(pass) && stat.equals("user") ){
					//sendRedirect("http://www.javatpoint.com");  
					status1 = 1;
					break;
				}
				else if(employee.getEmail().equals(emailid) && employee.getPassword().equals(pass) && stat.equals("vendor"))
				{
					
					status1=2;
					break;
				}
				else if(employee.getEmail().equals(emailid) &&employee.getPassword().equals(pass) && stat.equals("admin"))
				{
					status1=3;
					break;
				}
				else{
					status1 = 0;
					
				}
				
				
				
				}
				con.close();
			}
			
			catch(Exception e){
				System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			
			}
			System.out.println(status1);
			return status1;
		}
	
	

	
		


	
	
	public List<Employee> getAllEmployee(){
		List<Employee> emplist = new ArrayList<Employee>();
		sql_query ="SELECT * FROM searchengg.user";
		try{
			
		 stmt = conn.createStatement();
		 resultSet = stmt.executeQuery(sql_query);
		 
		 while(resultSet.next()){
			 emp.setName(resultSet.getString(2));
			 emp.setEmail(resultSet.getString(3));
			 emp.setPassword(resultSet.getString(4));
			 emp.setPhoneno(resultSet.getString(5));
			 /*if(!emp.equals(null)){
				 System.out.println("Name of employee @Addding : " + emp.getEname());
			 }*/
			 emplist.add(emp);
		 }
		}catch(Exception ex){
			System.out.println("Problem Occured while getting All Employee");
			ex.printStackTrace();
		}
		return emplist;
	}
	
	
	
	
}