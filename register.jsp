
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Raleway" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/skeleton.css">
	<link rel="stylesheet" href="css/layout.css">
    
</head>
<script type="text/javascript">
var c1=0;
var c2=0;
var c3=0;
var c4=0;
function usernamechecking()
{
	//alert("haiiii");
	var k=document.getElementById("username").value;
	//alert(k);
	if(k.length>5)
	{
	c1=1;
	document.getElementById("pr1").style.color = "green";
	 document.getElementById("pr1").innerHTML="valid";
	}
	else
	{
	 document.getElementById("pr1").style.color = "red";
	 document.getElementById("pr1").innerHTML="username contains more than 5 letters";
	     

	}
	}
	
function emailchecking()
{
	//alert("haiiii");
	var k=document.getElementById("email").value;
	 var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	//alert(k);
	if(expr.test(k))
	{
	c2=1;
	 document.getElementById("pr2").style.color = "green";
	

	 document.getElementById("pr2").innerHTML="valid";
	 
	 
	 check();
	}
	else
	{
		
	document.getElementById("pr2").style.color = "red";
	document.getElementById("pr2").innerHTML="email contains '@','.'";
	     

	}
}

function passwordchecking()
{
	//var pattern=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}$/;
	 //var mediumRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})");
	var mediumRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})");
	//var mediumRegex=/^(?=.*[\d])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*])[\w!@#$%^&*]{8,}$/;
	var ps=document.getElementById("psw1").value;
	

	//alert(ps);
	 if(mediumRegex.test(ps))
	{
	c4=1;
	 document.getElementById("pr6").style.color = "green";
	

	 document.getElementById("pr6").innerHTML="valid";
	}
	else
	{
	 document.getElementById("pr6").style.color = "red";
	 document.getElementById("pr6").innerHTML="password must include digits and letters";
	     

	}
}
function phnochecking()
{
  var phoneno = /^\d{10}$/;
  var phn=document.getElementById("phno").value;
  if(phoneno.test(phn))
	{
	c3=1;
	 document.getElementById("pr5").style.color = "green";
	

	 document.getElementById("pr5").innerHTML="valid";
	}
	else
	{
	 document.getElementById("pr5").style.color = "red";
	 document.getElementById("pr5").innerHTML="10 digits only";
	     

	}

}
function checking()
{
if(c1==1&&c2==1&&c3==1&&c4==1)
{
//alert("Sucessfully Registered");
return true;
}
else
{
//alert("Registration Unsucessfull");
return false;
}
}
</script>
<body>
<header role="banner">
     
      <nav class="navbar navbar-expand-md navbar-dark bg-light">
        <div class="container">
          <a class="navbar-brand" >CITYBOOK</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse navbar-light" id="navbarsExample05">
            <ul class="navbar-nav ml-auto pl-lg-5 pl-0">
              <li class="nav-item">
                <a class="nav-link active" href="index.jsp">Home</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
              </li>
             
              <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
              </li>
              
            </ul>
            
          </div>
        </div>
      </nav>
    </header>
     <section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_1.jpg);">
      <div class="container">
      <center> <div class="row align-items-center site-hero-inner justify-content-center">
        	  <div class="form-bg">
		   	<s:form action="RegisterAction" style="height:400px">
		   
			<h2>
				<b><font color="black" size="4">Register</font></b>
			</h2>
			
				<input type="text" name="form.name" id="username" placeholder="Name"/ required  onblur="usernamechecking()"> <font color="green">
		<span id="pr1"></span>
		</font>
				<input type="email" id="email" name="form.email" placeholder="Email"/ required  onblur="emailchecking()"> <font color="green">
		<span id="pr2"></span>
		</font>
				<input type="password" id="psw1" name="form.password" placeholder="Password"/ required onblur="passwordchecking()"><font color="green">
   <span  id="pr6"></span>
 </font>
				<input type="phone" id="phno" name="form.phoneno" placeholder="phoneno"/ required onblur="phnochecking()"><font color="green">
	<span id="pr5"></span></font>
				<div height=""><center><select name ="form.status">
							  <option value="select">select user type</option>
							  <option value="user">user</option>
							  <option value="vendor">vendor</option>
							
				</select></center></div>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="SignUp" class="btn btn-primary"/ onclick="checking()">
				
				</s:form>
				
		</div>	
		</table> </center>

            <form class="form-inline element-animate" id="search-form">
              <label for="s" class="sr-only">Location</label>
              <input type="text" class="form-control form-control-block search-input" id="autocomplete" placeholder="Search Location with Google Search API" onFocus="geolocate()">
              <button type="submit" class="btn btn-primary">Search</button>
            </form>

          </div>
        </div>
      </div>
    </section>
    <div class="container">
		
		
    </div>
     <footer class="site-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-4">
            <h3 class="mb-4">About</h3>
            <p class="mb-4">CityBook provides wide range of information to millions of people in the city</p>
            <ul class="list-unstyled ">
              <li class="d-flex"><span class="mr-3"><span class="icon ion-ios-location"></span></span><span class="">34 Banjara Hills,Hyderabad</span></li>
              <li class="d-flex"><span class="mr-3"><span class="icon ion-ios-telephone"></span></span><span class="">+040 23523411</span></li>
              <li class="d-flex"><span class="mr-3"><span class="icon ion-email"></span></span><span class="">citybookx@gmail.com</span></li>
            </ul>
          </div>
          
          
          <div class="col-md-3">
            <h3>Connect</h3>
            <p>
              <a href="https://www.facebook.com/citybook.foryouu" class="p-2"><span class="fa fa-facebook"></span></a>
              <a href="https://twitter.com/citybook14" class="p-2"><span class="fa fa-twitter"></span></a>
              
            </p>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-7 text-center">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
CityBook &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          </div>
        </div>
      </div>
    </footer>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
	<script>window.jQuery || document.write("<script src='js/jquery-1.5.1.min.js'>\x3C/script>")</script>
	<script src="js/app.js"></script>	
</body>
</html>