<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>forgot password</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
background-image: url("http://www.loblawdocksafety.com/assets/background-1door-cd7c1d4caba33a095f138aa38d8628ab.png");
background-repeat: no-repeat;
background-size: cover,contain;
}
h2  {
align:center;
padding-top: 8.5cm;

}
header {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 5;
}

header .navbar-brand {
  text-transform: uppercase;
  letter-spacing: .2em;
  font-weight: 400;
  color: #fff !important;
}

header .navbar {
  padding-top: 0;
  padding-bottom: 0;
  background: transparent !important;
}

@media (max-width: 991.98px) {
  header .navbar {
    background: #ebebeb !important;
    padding-top: .5rem;
    padding-bottom: .5rem;
  }
}

header .navbar .nav-link {
  padding: 1.7rem 1rem;
  outline: none !important;
}

@media (max-width: 991.98px) {
  header .navbar .nav-link {
    padding: .5rem .5rem;
  }
}

header .navbar .nav-link:hover {
  color: #fff !important;
}

header .navbar .nav-link.active {
  color: #f8f9fa !important;
}

header .navbar .dropdown.show > a {
  color: #fff !important;
}

header .navbar .dropdown-menu {
  font-size: 14px;
  border-radius: 4px;
  border: none;
  -webkit-box-shadow: 0 2px 30px 0px rgba(0, 0, 0, 0.2);
  box-shadow: 0 2px 30px 0px rgba(0, 0, 0, 0.2);
  min-width: 13em;
  margin-top: -10px;
}

header .navbar .dropdown-menu:before {
  bottom: 100%;
  left: 10%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
  border-bottom-color: #fff;
  border-width: 10px;
}

@media (max-width: 1199.98px) {
  header .navbar .dropdown-menu:before {
    display: none;
  }
}

header .navbar .dropdown-menu .dropdown-item:hover {
  background: #007bff;
  color: #fff;
}

header .navbar .dropdown-menu .dropdown-item.active {
  background: #007bff;
  color: #fff;
}

header .navbar .dropdown-menu a {
  padding-top: 7px;
  padding-bottom: 7px;
}

header .navbar.navbar-light .nav-link {
  color: #fff;
}

header .navbar.navbar-light .nav-link.active {
  color: #fff;
}




header{
background-color: #777;
}


header .navbar-brand {
    text-transform: uppercase;
    letter-spacing: .2em;
    font-weight: 400;
    color: #fff !important;
}
header .nav-item{
 color: #fff !important;
}
.navbar-nav a{
 color: #fff !important;
}
</style>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<script type="text/javascript">

load= function(a)
{
$.ajax({
  url:'checkforvoting',
  type:'GET',
  success: function(data)
  {
  if(data)
  {
  $("#table").load("fvalid.java");
  }
  else
  {
  
  $("#table").load("login.jsp  ");
  }
  }
});
} 

<script type="text/javascript">
function noBack() {
	window.history.forward()
}
noBack();
window.onload = noBack;
window.onpageshow = function(evt) {
	if (evt.persisted)
		noBack()
}
window.onunload = function() {
	void (0)
}
</script>
</script>
<header role="banner">
      <nav class="navbar navbar-expand-md navbar-dark bg-light">
        <div class="container">
          <a style="font-size: 20px "   class="navbar-brand" >CITYBOOK</b></a>
          
        </div>
      </nav>
    </header>
<center>
<s:form action="ForgotAction">
<h2><font color="white">
  
  </font><input  type="text" placeholder="Enter Your Email Address" name="form3.email"><br>
  <br>
 
  <button class ="btn btn-primary"> Submit</button>
 </h2>
 </s:form>
</center>
</body>
</html>