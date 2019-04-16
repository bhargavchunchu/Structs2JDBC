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
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ron.Dao.DaoBusiness;
import com.ron.Model.Business;
import com.ron.Model.Employee;
import com.ron.Model.Forget;
import com.ron.util.JdbcConnection;

public class DaoBusImple implements DaoBusiness 
{
	
	private	Connection conn = (Connection)JdbcConnection.getConnection(); 
	private ResultSet resultSet = null;
	private Statement stmt = null;
	private Business bus = new Business();
	private String sql_query;
	private PreparedStatement pstmt = null;
	int status1=0;
	

	@Override
	public int addBusiness(Business business) {
		// TODO Auto-generated method stub
	 boolean status=false;
		String cat=business.getCategory();
		String a =business.getArea();
		String sn=business.getSname();
		System.out.println("xxxxxxxxxxxxxx:"+business.getArea());
		System.out.println("*********"+business.getCategory()+"//"+business.getSname()+"++area++"+business.getArea());
		int count1=0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
			String query="select * from "+business.getArea()+" where category='"+cat+"'";
			System.out.println(query);
			PreparedStatement ps=con.prepareStatement(query);  
			ResultSet rs=ps.executeQuery(); 
			while(rs.next())
			{
				count1=count1+1;
				System.out.println("Inside Loop:"+count1);
				
			}
			System.out.println(":"+count1);
			
			
			
		}catch(Exception e)
		{
			System.out.println("out of try block");
		}
		if(business!=null){
		    sql_query = "INSERT INTO searchengg."+business.getArea()+" VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			 boolean mail = false;
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
			int c=count1+1;
			String sta="pending";
			String area=business.getArea();
			String res = area.substring(0,3);
			//String ss="SELECT SUBSTRING("+area+"1,3) from "+business.getArea()+"";
			//System.out.println(ss);
			String concat=res+cat+Integer.toString(c);
			System.out.println(concat);
			String reject="0";
			pstmt = conn.prepareStatement(sql_query);
			pstmt.setString(1,concat);
			pstmt.setString(2, business.getEmail());
			pstmt.setString(3, business.getCategory());
			pstmt.setString(4, business.getSname());
			pstmt.setString(5, business.getAddress());
			pstmt.setString(6, business.getOpenTiming());
			pstmt.setString(7, business.getCloseTiming());
			pstmt.setString(8, business.getArea());
			pstmt.setString(9, business.getContact());
			pstmt.setString(10, sta);
			pstmt.setString(11, reject);
			status =  pstmt.execute();
			System.out.println("Value of status in addBusiness = " + status);
			if(status = false) 
				mail = true;
			if(mail = true) 
			{
				String email=business.getEmail();
				System.out.println("Inside DaoBusImple Email is"+email);
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class",
						"javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");

				Session session = Session.getDefaultInstance(props,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("citybookx@gmail.com","citybook123");
						}
					});
				if(email!=null)
				{
					sql_query = "Select * from "+business.getArea()+" where email_id='"+email+"'";
					System.out.println("SQL QUERY:"+sql_query);
					PreparedStatement ps=conn.prepareStatement(sql_query);  
					ResultSet rs= ps.executeQuery();
					if(rs.next()) {
						 String vid = rs.getString(1);
						 System.out.println("Vendor Id is:"+vid);
					}
					Message message = new MimeMessage(session);
					message.setFrom(new InternetAddress("citybookx@gmail.com"));
					message.setRecipients(Message.RecipientType.TO,
							InternetAddress.parse(email));
					message.setSubject("Business Registration Successful");
			        
			        message.setText("Hello "+" "+email+" "+" Your  Business Details are: \n"+
			                         "Vendor Id: " +rs.getString(1)+"\n"+
			        		         "Business Type: " +rs.getString(3)+"\n"+
			                         "Business Name: " +rs.getString(4)+"\n"+
			        		         "Address: " +rs.getString(5)+"\n"+
			                         "Opening Time: " +rs.getString(6)+" Am\n"+
			        		         "Closing Time: " +rs.getString(7)+" Pm\n"+
			        		         "Area: "+rs.getString(8)+"\n"+
			        		         "Contact Details:"+rs.getString(9)+"\n"+
			        		         "Waiting For Adminstration Approval");
					Transport.send(message);
					System.out.println("Vendor Details Mail Sent");
			    }
			con1.close();
			status1=1;
			return status1;	
		 }
		}	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
				
		
		
		/*if(business.getArea().equals("Kukatpally"))
		{
			int count1=0;
			System.out.println("*********////////****");
			/*try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Kukatpally where category='"+cat+"'";
				System.out.println(query+"  _________________^");
				PreparedStatement ps=con.prepareStatement(query);  
				System.out.println(ps);
				 
				ResultSet rs=ps.executeQuery(); 
				
				//for(int i=0;i<;i++)
				
				while(rs.next())
				{
					count1=count1+1;
					System.out.println("Inside Loop:"+count1);
					
				}
				System.out.println(":"+count1);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Kukatpally VALUES(?,?,?,?,?,?,?,?,?,?)";
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");
				
				int b=1;
				int c=count1+b;
				System.out.println(c);
				String sta="Pending";
				String concat="kuk"+cat + Integer.toString(c);
				
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
	
			
		}
		else if(business.getArea().equals("Ameerpet"))
		{
			int count2=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Ameerpet where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count2=count2+1;
					
				}
				System.out.println(count2);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Ameerpet VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count2+1;
				String sta="pending";
				String concat="Amee"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
			
			
		}
		else if(business.getArea().equals("Tarnaka"))
		{
			int count3=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Tarnaka where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count3=count3+1;
					
				}
				System.out.println(count3);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Tarnaka VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count3+1;
				String sta="pending";
				String concat="Tarn"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
			
			
		}
		else if(business.getArea().equals("Gachibowli"))
		{
			int count4=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Gachibowli where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count4=count4+1;
					
				}
				System.out.println(count4);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Gachibowli VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count4+1;
				String sta="pending";
				String concat="Gachi"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
			
		}
		else if(business.getArea().equals("KPHB"))
		{
			int count5=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from KPHB where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count5=count5+1;
					
				}
				System.out.println(count5);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.KPHB VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count5+1;
				String sta="pending";

				String concat="Kph"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
			
		}
		else if(business.getArea().equals("Secunderabad"))
		{
			int count6=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Secunderabad where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count6=count6+1;
					
				}
				System.out.println(count6);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Secunderabad VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count6+1;
				String sta="pending";
				String concat="Sec"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
			
		}
		else if(business.getArea().equals("Panjagutta"))
		{
			int count7=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Panjagutta where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count7=count7+1;
					
				}
				System.out.println(count7);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Panjagutta VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count7+1;
				String sta="pending";
				String concat="Panj"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
		}
		else if(business.getArea().equals("Charminar"))
		{
			int count8=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Charminar where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count8=count8+1;
					
				}
				System.out.println(count8);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Charminar VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count8+1;
				String sta="pending";
				String concat="char"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
		}
		else if(business.getArea().equals("Miyapur"))
		{
			int count9=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Miyapur where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count9=count9+1;
					
				}
				System.out.println(count9);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Miyapur VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count9+1;
				String sta="pending";
				String concat="Miya"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}
		}
		else if(business.getArea().equals("Uppal"))
		{
			int count10=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from Uppal where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count10=count10+1;
					
				}
				System.out.println(count10);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.Uppal VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count10+1;
				String sta="pending";
				String concat="Upp"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				con1.close();
				status1=1;
				return status1;
				
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
	
			}
			else
			{
				System.out.println("not inserted..........");
			}
		}
		else if(business.getArea().equals("JubileeHills"))
		{
			int count11=0;
			
			try{
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				String query="select * from JubileeHills where category='"+cat+"'";
				PreparedStatement ps=con.prepareStatement(query);  
				//System.out.println(ps);
				 
				ResultSet resultset=ps.executeQuery();   
				while(resultset.next())
				{
					count11=count11+1;
					
				}
				System.out.println(count11);
				con.close();
				}
			catch(Exception e)
			{
					System.out.println("Problem Occured while getting logincheck = " + e.getMessage());
			}
			if(business!=null){
			    sql_query = "INSERT INTO searchengg.JubileeHills VALUES(?,?,?,?,?,?,?,?,?,?)";	
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");  
				int c=count11+1;
				String sta="pending";
				String concat="Jubi"+cat + Integer.toString(c);
				System.out.println(concat);
				pstmt = conn.prepareStatement(sql_query);
				pstmt.setString(1,concat);
				pstmt.setString(2, business.getEmail());
				pstmt.setString(3, business.getCategory());
				pstmt.setString(4, business.getSname());
				pstmt.setString(5, business.getAddress());
				pstmt.setString(6, business.getOpenTiming());
				pstmt.setString(7, business.getCloseTiming());
				pstmt.setString(8, business.getArea());
				pstmt.setString(9, business.getContact());
				pstmt.setString(10, sta);
				status =  pstmt.execute();
				
				System.out.println("Value of status in addBusiness = " + status);
				
				con1.close();
				
				status1=1;
				return status1;
				
				
			}
			catch(Exception e) 
			{
				System.out.println("Problem Occured= " + e.getMessage());
			}
			}
			else
			{
				System.out.println("not inserted..........");
			}*/
	//	}
		
		
		
		
	}
		return status1;
		
}
}
