<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Details</title>
<%@page import="java.sql.DriverManager"%>
  <%@page import="java.sql.ResultSet"%>
  <%@page import="java.sql.Statement"%>
  <%@page import="java.sql.Connection"%>
  <%@page import="java.sql.PreparedStatement" %>
  	<%@page import="java.lang.*" %>
  
</head>
<body>
	 
	 
	<%
	//ResultSet rs1= null;
	try{
		HttpSession sp1 = request.getSession(true);
        String email=request.getParameter("form.email");
        System.out.println("Inside Method:"+email);
        if(email==null){
        	email = sp1.getAttribute("email").toString();
        }
         sp1.setAttribute("email", new String(email));
         
         
         
         
         
		 String name = request.getParameter("form.name");
		 String email1 = request.getParameter(email);
		 System.out.println("Email1 is:"+email);
		 String phonenum = request.getParameter("form.phoneno");
		 Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg", "root",
					"root");
			
			String s = "update user set  name=\""+name+"\" where email_id=\""+email+"\"";
			String s1 = "update user set mobileno=\""+phonenum+"\" where email_id=\""+email+"\"";
			System.out.println(s);
			System.out.println(s1);
			PreparedStatement ps=con.prepareStatement(s);  
			ps.executeUpdate(s);
			PreparedStatement ps1=con.prepareStatement(s1);  
			ps.executeUpdate(s1);
			
			response.sendRedirect("Vendordashboard.jsp");
	     }catch(Exception e){
	    	 e.printStackTrace();
	     }
	 %>
	
}
</body>
</html>