package com.ron.DaoImple;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ron.Dao.DaoForgot;
import com.ron.Model.Forget;
import com.ron.util.JdbcConnection;

public class DaoForgImple implements DaoForgot 
{
	private	Connection conn = (Connection)JdbcConnection.getConnection(); 
	private ResultSet resultSet = null;
	private Statement stmt = null;
	private Forget forget=new Forget();
	private String sql_query;
	private PreparedStatement pstmt = null;
	int status1=0;

	@Override
	public int addForgot(Forget forget) {
		// TODO Auto-generated method stub
		
		 boolean status=false;
		 String email=forget.getEmail();
		 System.out.println(email);
		  
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
			
			if(forget!=null)
			{
				sql_query = "Select password from user where email_id='"+email+"'";
				System.out.println(sql_query);
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				
					Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg","root","root");
					PreparedStatement ps=conn.prepareStatement(sql_query);  
					ResultSet rs= ps.executeQuery();
					if(rs.next()) {
						String ss = rs.getString(1);
						System.out.println(ss);
					}
						System.out.println("Hello Please Enter Your Email Address:");
						// Scanner scan = new Scanner(System.in);
						// String email = scan.next();2
				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("citybookx@gmail.com"));
				message.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse(email));
				message.setSubject("Original Password");
		        message.setText("Dear "+" "+email+" "+"Your Registered Password is:"+" "+rs.getString(1));
				Transport.send(message);
				System.out.println("Done");

			} catch (MessagingException | ClassNotFoundException | SQLException e) {
				throw new RuntimeException(e);
			}
			}
		 
		return 0;
	}

}
