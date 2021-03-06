<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <title>Search Results</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Raleway" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script type="text/javascript">
		    			 function alertName(){
		    			 alert("Form has been submitted");
		    			 } 
		    			 </script>
		   <style type="text/css">
		   .site-hero.overlay {
    position: relative;
}
.site-hero {
    background-size: cover;
    background-position: center center;
    min-height: 65px;
    height: 0vh;
}
body {
	background-image: url("https://www.planwallpaper.com/static/images/Alien_Ink_2560X1600_Abstract_Background_1.jpg");
}
		   </style>   
       </head>
  <body>
  <%@page import="java.sql.DriverManager"%>
  <%@page import="java.sql.ResultSet"%>
  <%@page import="java.sql.Statement"%>
  <%@page import="java.sql.Connection"%>
 <%@page import ="java.io.File" %>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" java.util.Arrays"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>

    <header role="banner">
     <% HttpSession sp = request.getSession(true);
        String email = sp.getAttribute("email").toString();
       
         %>
      <nav class="navbar navbar-expand-md navbar-dark bg-light">
        <div class="container">
          <a class="navbar-brand" href="admindashboard.jsp">CityBook</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse navbar-light" id="navbarsExample05">
            <ul class="navbar-nav ml-auto pl-lg-5 pl-0">
              
            
              <strong><li class="nav-item dropdown" style="color:White;">
              <br>
             
              
			</li></strong>
					
   				<li class="nav-item dropdown"><br>
   				 <%=email %>
                 <img class="img-circle"  src="http://www.connecta-network.com/wp-content/themes/connecta/images/default_profile_icon.png" width="30px" height="30px"/>
                 
                <div class="dropdown-menu" aria-labelledby="dropdown04"  class="profile-header-img">
                  
                 
                  <a class="dropdown-item" href="fpassword.jsp">Change Password</a>
                  <a class="dropdown-item" href="index.jsp">Logout</a>
                  
                  
                </div>

              </li>
              
            </ul>
            
          </div>
        </div>
      </nav>
    </header>
    <!-- END header -->

    
    <section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(https://wallpapercave.com/wp/DTvUQor.jpg); background-repeat:no-repeat;
background-size:cover,contain;width:1376px;"> </section>
      <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
          <div class="col-md-8 text-center">

            <div class="mb-5 element-animate">
              
            </div>
	<div class="row">
            <form class="form-inline element-animate" id="search-form" style="width:500px" action="sample.jsp">
              <label for="s" class="sr-only">Location</label>
              <input type="text" name="searchplace" class="form-control form-control-block search-input" id="autocomplete" placeholder="Search Location with Google Search API" onFocus="geolocate()">
           
             	<div style="margin-top:50px,width:20px">
                <select name="cat"  style="width:150px; height:55px">
                <option class="dropdown-item"  value=Hospital  href="#">Hospital</option>
              <option class="dropdown-item"  value="Hotel" href="#">Hotels</option>
              <option class="dropdown-item" value="Restaurants" href="#">Restaurants</option>
                <option class="dropdown-item" value=" Supermarkets" href="#">Super Markets</option>
               <option class="dropdown-item"  value="Spa" href="#">Spa</option>
                 </select>
                </div>
                <div style="margin-top:50px,width:20px">
                   <button type="submit" class="btn btn-primary" style="position: relative;
    bottom: 55px;
    left: 470px;" action="sample.jsp"  >Search</button>
                </div>
          </form>
       
           </div>

          </div>
        </div>
      
   
    
    <!-- END section -->
    
    </br>
    
    <!-- <div class="container" style="border-style:solid;"width="100%"> -->
    <%
    	String a=request.getParameter("searchplace");
    	String cat=request.getParameter("cat");
    	//out.println("Category is:"+cat);
    //	String cat=request.getParameter("cat");
    	//out.println(a);
    %>
    	 <h3><strong>your searched places are..</strong></h3>
        <table id="example" frame="box" rules="all" border="2" width="80%" class ="table table-bordered">
    			<tr>
    				<td align="center"><b>Vendor Email</b></td>
    				<td align="center"><b>Category</b></td>
    				<td align="center"><b>Shop Name</b></td>
    				<td align="center"><b>Address</b></td>
    				<td align="center"><b>Open Timing</b></td>
    				<td align="center"><b>Close Timing</b></td>	
    				<td align="center"><b>Area</b></td>
    				<td align="center"><b>contact</b></td>
    			</tr>
    <%
	int len = a.length(),count = 0;
	String arr[] = new String[count];
	ArrayList<String> list=new ArrayList<String>();
	System.out.println("String Length is:"+len);
	StringTokenizer st1 =new StringTokenizer(a, ",");
        while (st1.hasMoreTokens()) 
        {
        	String b=st1.nextToken();
        	System.out.println("a value"+b);
        		list.add(b);
        }
        
    /*    Iterator itr=list.iterator();  
        while(itr.hasNext()){  
         System.out.println(itr.next());  
    } */
      //  File file = new File("C://Users//Bhargav//Desktop//Practicum//Structs2JDBCLoginProject//search.txt");
        //Scanner sc = new Scanner(file);
        String area = list.get(0);
        System.out.println("Area is:"+ area);
        int flag=0;
        BufferedReader reader;
     	//String fileName = "C://Users//Bhargav//Desktop//Practicum//Structs2JDBCLoginProject//search.txt";
    	//InputStream ins = application.getResourceAsStream(fileName);
        //InputStream ins = application.getResourceAsStream("C://Users//Bhargav//Desktop//Practicum//Structs2JDBCLoginProject//search.txt");
        try
        {
        	reader=new BufferedReader(new FileReader("C:/Users/HP/Desktop/Practicum/Structs2JDBCLoginProject/WebContent/search.txt"));
        	//String fileName = "C://Users//Bhargav//Desktop//Practicum//Structs2JDBCLoginProject//search.txt";
        	//InputStream ins = application.getResourceAsStream(fileName);
        	//BufferedReader br = new BufferedReader((new InputStreamReader(ins)));
        	String line=reader.readLine();
    		 while ((line!= null))
    		  {
    			 if(area.equals(line))
    			{
    				
    				System.out.println("inside if:"+ area);
    				System.out.println("inside if file:"+line);
    					Class.forName("com.mysql.jdbc.Driver");
    					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3310/searchengg", "root","root");
    					Statement stmt = con.createStatement();
    					//String s = "select * from "+area+" where category="+cat+" and status=approved";
    					String s = "select * from " +area+ " where category ='"+cat+"' and  status = 'approved'"; 
    					System.out.println(s);
    					//System.out.println("***************************");
    					ResultSet rs = stmt.executeQuery(s);
    					 flag=1;
    					while (rs.next()) {
    						
    			%>
    		
    			
    			<tr align="center">
    				<td><%=rs.getString(2)%></td>
    				<td><%=rs.getString(3)%></td>
    				<td><%=rs.getString(4)%></td>
    				<td><%=rs.getString(5)%></td>
    				<td><%=rs.getString(6) %></td>
    				<td><%=rs.getString(7) %></td>
    				<td><%=rs.getString(8) %></td>
    				<td><%=rs.getString(9) %></td>
    				</tr>


    			<%    					
	    				}
    					
    					break;
    					
    			
    				}    	
    			
    			
    			
    				line=reader.readLine();
    			
    			
    		  }    		 
    }				
        
    				catch (Exception e) {
    					e.printStackTrace();
    				}
    		  
		    		 if(flag==0)
		 			{
		    			  
		    	           String redirectURL = "displayplaces.jsp";
		    		       response.sendRedirect(redirectURL);
		 			}   
		    		 
    		 
    		%>
    		
    			</table><br><br>
        
       
			
			
    
          
    <!--  </div>-->
  
    <section class="site-section">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2>Top Searches</h2>
            
          </div>
        </div>
        <div class="row top-destination">
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place">
              <img src="images/img_1.jpg" alt="Image placeholder">
              <h2>Hotels</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place">
              <img src="images/img_2.jpg" alt="Image placeholder">
              <h2>Hospitals</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place">
              <img src="images/img_3.jpg" alt="Image placeholder">
              <h2>Restaurents</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place">
              <img src="images/img_4.jpg" alt="Image placeholder">
              <h2>Super Markets</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place">
              <img src="images/img_5.jpg" alt="Image placeholder">
              <h2>Spa</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          
        </div>
      </div>
    </section>
    <!-- END section -->
    
   
    
   
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
    <!-- END footer -->
    
    
    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.0.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>

    <script>
      // This example displays an address form, using the autocomplete feature
      // of the Google Places API to help users fill in the information.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      var placeSearch, autocomplete;
      var componentForm = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        administrative_area_level_1: 'short_name',
        country: 'long_name',
        postal_code: 'short_name'
      };

      function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
            {types: ['geocode']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);
      }

      function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();

        for (var component in componentForm) {
          document.getElementById(component).value = '';
          document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
          var addressType = place.address_components[i].types[0];
          if (componentForm[addressType]) {
            var val = place.address_components[i][componentForm[addressType]];
            document.getElementById(addressType).value = val;
          }
        }
      }

      // Bias the autocomplete object to the user's geographical location,
      // as supplied by the browser's 'navigator.geolocation' object.
      function geolocate() {
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var geolocation = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
            var circle = new google.maps.Circle({
              center: geolocation,
              radius: position.coords.accuracy
            });
            autocomplete.setBounds(circle.getBounds());
          });
        }
      }
    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&libraries=places&callback=initAutocomplete"
        async defer></script>

    <script src="js/main.js"></script>
  </body>
</html>