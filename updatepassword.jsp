<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession sp = request.getSession(true);
String e = sp.getAttribute("email").toString();
out.println(e);
%>
<%

String pa = request.getParameter("pass");	
out.println(e+" " +pa);
System.out.println(e+" " +pa);

	int flag=0;
	
	try {
		
		 flag=1;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg", "root",
				"root");
		Statement stmt = con.createStatement();
	
		String s = "Update user set password=\""+pa+"\" where email_id=\""+e+"\"";	
		System.out.println(s);
		int i= stmt.executeUpdate(s);
		System.out.println(i);
		con.close();
		String redirectURL = "logout.jsp";
		response.sendRedirect(redirectURL);
		
		%>
		
			
		
	
		



<%


	} catch (Exception b) {
		b.printStackTrace();
	}
	
	
%>
</body>
</html>