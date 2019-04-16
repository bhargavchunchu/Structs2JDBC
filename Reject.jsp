<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%@page import="java.sql.DriverManager"%>
  <%@page import="java.sql.ResultSet"%>
  <%@page import="java.sql.Statement"%>
  <%@page import="java.sql.Connection"%>
  	<%@page import="java.lang.*" %>
    
<%
String vid = request.getParameter("vid");
String area = request.getParameter("area");


out.println("vid:"+vid+" " +"area:"+area);
%>

     <%
 			String b="1";
     		
     		
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg", "root",
							"root");
					Statement stmt = con.createStatement();
					System.out.println(b);
					System.out.println(vid);
					System.out.println(area);
					String s = "Update "+area+" set reject='1' where vid=\""+vid+"\"";	
					int i= stmt.executeUpdate(s);
					System.out.println(i);
				
			%>
			<%
     String redirectURL = "admindashboard.jsp";
       response.sendRedirect(redirectURL);
   %>
			
			<%
				

				} catch (Exception e) {
					e.printStackTrace();
				}
				
				
			%>
</body>
</html>