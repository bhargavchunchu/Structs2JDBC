<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Registration</title>
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
	
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/material-bootstrap-wizard.css" rel="stylesheet" />
	<link href="assets/css/demo.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	
	
	
    
</head>
<body>
<header role="banner">
     
      <nav class="navbar navbar-expand-md navbar-dark bg-light">
        <div class="container">
          <a class="navbar-brand" >CITYBOOK</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
           &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp   &nbsp  
          
        </div>
      </nav>
    </header>
     <section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_1.jpg); height:810px " >
      
      <div class="container">
      <center>
      <div class="row">
		        <div class="col-sm-8 col-sm-offset-2">
		            <!--      Wizard container        -->
		            <div class="wizard-container">
		                <div class="card wizard-card" data-color="green" id="wizard">
		                   <s:form action="BusinessAction">
		                <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->

		                    	<div class="wizard-header">
		                        	<h3 class="wizard-title">
		                        		Business Registration
		                        	</h3>
									<h5>This information will let us know more about you.</h5>
		                    	</div>
								<div >
<ul>
                           <li><a href="#details" data-toggle="tab"  style="background: #4caf50 "><font color="white" size="4">Business Account</font></a></li>
                           
                       </ul>
</div>

<% 
HttpSession sp = request.getSession(true);
String e = sp.getAttribute("email").toString();
%> 
		                        <div class="tab-content">
		                            <div class="tab-pane" id="details">
		                            	<div class="row">
			                            	<div class="col-sm-12">
			                                	
			                            	</div>
		                                	<div class="col-sm-6">
												<div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons"></i>
													</span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">Your Email</label>
			                                          	<input name="form1.email" type="text" value =<%=e %> class="form-control" required>
			                                        </div>
												</div>

												<div class="input-group">
													<span class="input-group-addon">
														
													</span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">Shop name</label>
			                                          	<input name="form1.sname" type="text" class="form-control" required>
			                                        </div>
												</div>

		                                	</div>
		                                	
		                                	<div class="col-sm-6">
		                                	<div class="input-group">
													<span class="input-group-addon">
														
													</span>
		                                    	<div class="form-group label-floating">
		                                        	<label class="control-label">Category</label>
	                                        		<select class="form-control"  name="form1.Category">
														<option disabled="" selected=""></option>
	                                                	<option value="Hospital">Hospital  </option>
	                                                	<option value="Hotel">Hotel  </option>
	                                                	<option value="Restaurant"> Restaurant </option>
	                                                	<option value="Super Markets"> Super Markets </option>
	                                                	<option value="Spa">Spa </option>
	                                                	
		                                        	</select>
		                                        	</div>
		                                    	</div>
												<div class="input-group">
													<span class="input-group-addon">
														
													</span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">phone no</label>
			                                          	<input name="form1.contact" type="text" class="form-control" required>
			                                        </div>
												</div>
		                                	</div>
		                                	<div class="col-sm-6">
												<div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons"></i>
													</span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">open time</label>
			                                          	<input name="form1.OpenTiming" type="time" class="form-control">
			                                        </div>
												</div>

												<div class="input-group">
													<span class="input-group-addon">
														
													</span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">close time</label>
			                                          	<input name="form1.CloseTiming" type="time" class="form-control">
			                                        </div>
													
												</div>

		                                	</div>
		                                	<div class="col-sm-6">
												<div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons"></i>
													</span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">Address</label>
			                                          	<input name="form1.Address" type="text" class="form-control">
			                                        </div>
												</div>

												<div class="input-group">
													<span class="input-group-addon">
														
													</span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">Area</label>
			                                          	<select class="form-control" name="form1.Area">
														<option disabled="" selected=""></option>
	                                                	<option value="Kukatpally ">Kukatpally  </option>
	                                                	<option value="Ameerpet">Ameerpet</option>
	                                                	<option value="KPHB"> KPHB </option>
	                                                	<option value="Uppal"> Uppal </option>
	                                                	<option value="Jubileehills"> Jubileehills </option>
	                                                	<option value="Gachibowli">Gachibowli </option>
	                                                	<option value="Secunderabad"> Secunderabad </option>
	                                                	<option value="Tarnaka"> Tarnaka </option>
	                                                	<option value="Miyapur"> Miyapur </option>
	                                                	<option value="Charminar "> Charminar </option>
	                                                	<option value="Panjagutta"> Panjagutta </option>
	                                                	
		                                        	</select>
			                                        </div>
												</div>

		                                	</div>
		                                	
		                            	</div>
		                            </div>
		                    
		                            
		                        </div>
	                        	<div class="wizard-footer">
	                           <div class="pull-right">
	               
	                                    <a href="Vendordashboard.jsp"> <input type='Submit' onclick="Vendordashboard.jsp"class='btn btn-finish btn-fill btn-danger btn-wd' name='finish' value='Finish' /></a>
	                                </div>
	                                <div class="clearfix"></div>
	                        	</div>
		                    </s:form>
		                </div>
		            </div> <!-- wizard container -->
		        </div>
	    	</div> <!-- row -->
		   
			
				
				
			
		 </center>

            <form class="form-inline element-animate" id="search-form">
              <label for="s" class="sr-only">Location</label>
              <input type="text" class="form-control form-control-block search-input" id="autocomplete" placeholder="Search Location with Google Search API" onFocus="geolocate()">
              <button type="submit" class="btn btn-primary">Search</button>
            </form>

          </div>
        
    </section>
    
    
    <div class="container">
		
		
    </div>
     <footer class="site-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-4">
            <h3 class="mb-4">About</h3>
            <p class="mb-4"><font color="black">CityBook provides wide range of information to millions of people in the city</font></p>
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
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.bootstrap.js" type="text/javascript"></script>

	<!--  Plugin for the Wizard -->
	<script src="assets/js/material-bootstrap-wizard.js"></script>

	<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
	<script src="assets/js/jquery.validate.min.js"></script>
</html>
