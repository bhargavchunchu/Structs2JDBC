<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <title>CITYBOOK</title>
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
    <script type="text/javascript">
		    			 function alertName(){
		    			     	alert("Please Login to search and know about places");
		    			     	
		    			 } 
		    			 </script> 
	
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
		    			 
		    			    
  </head>
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
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="destination.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</a>
                <div class="dropdown-menu" aria-labelledby="dropdown04">
                  <a class="dropdown-item" href="hospitals.html">Hospitals</a>
                  <a class="dropdown-item" href="hotels.html">Hotels</a>
                  <a class="dropdown-item" href="restaurents.html">Restaurants</a>
                  <a class="dropdown-item" href="supermarkets.html">Super Markets</a>
                  <a class="dropdown-item" href="spa.html">Spa</a>
                  
                </div>

              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="register.jsp">Register</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
              </li>
              
            </ul>
            
          </div>
        </div>
      </nav>
    </header>
    <!-- END header -->

     <section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_1.jpg); background-repeat:no-repeat;
background-size:cover,contain;">
      <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
          <div class="col-md-8 text-center">

            <div class="mb-5 element-animate">
              <h1>Explore your places</h1>
              <p>Discover &amp; connect with your favorite places around the city</p>
            </div>
          </div>
        </div>
      
    </section>
    <!-- END section -->

    <section class="feature-destination">
      <div class="container">
        <div class="row">
          <div class="col-md-4 element-animate ">
            <a href="#" class="img-bg" style="background-image: url('images/img_2.jpg')" onclick ="alertName()">
              <div class="text">
                <span class="icon ion-ios-location"></span>
                <h2>Hospitals</h2>
                <p>Visit This Place</p>
              </div>
            </a>
          </div>
          <div class="col-md-4 element-animate ">
            <a href="#" class="img-bg" style="background-image: url('images/img_1.jpg')"onclick ="alertName()">
              <div class="text">
                <span class="icon ion-ios-location"></span>
                <h2>Hotels</h2>
                <p>Visit This Place</p>
              </div>
            </a>
          </div>
          <div class="col-md-4 element-animate ">
            <a href="#" class="img-bg last" style="background-image: url('images/img_3.jpg')"onclick ="alertName()">
              <div class="text">
                <span class="icon ion-ios-location"></span>
                <h2>Restaurants</h2>
                <p>Visit This Place</p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <section class="site-section" align="center">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <h2>Top Searches</h2>
            
          </div>
        </div>
        <div class="row top-destination">
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place" onclick ="alertName()">
              <img src="images/hot_2.jpg" alt="Image placeholder">
              <h2>Hotels</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place"onclick ="alertName()">
              <img src="images/hos3.jpg" alt="Image placeholder">
              <h2>Hospitals</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place"onclick ="alertName()">
              <img src="images/img_3.jpg" alt="Image placeholder">
              <h2>Restaurants</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place"onclick ="alertName()">
              <img src="images/img_4.jpg" alt="Image placeholder">
              <h2>Super Markets</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" class="place"onclick ="alertName()">
              <img src="images/img_5.jpg" alt="Image placeholder">
              <h2>Spa</h2>
              <p>Visit This Place</p>
            </a>
          </div>
          <div class="col-lg-2 col-md-4 col-sm-6 col-12">
            <a href="#" onclick ="alertName()">
              <img src="https://www.zricks.com/img/UpdatesBlog/b12b7d71-e736-433f-8871-ad8266fd3fa9The%20Resurgence%20Of%20Shopping%20Malls%20In%20India.jpg" alt="Image placeholder" style="width: 100%" height="160px;">
             <br><br> <h2 style="font-size: 20px">Malls</h2>
              
            </a>
          </div>
          
        </div>
      </div>
    </section>
    <!-- END section -->
    
    <section class="section-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_2.jpg);">
      <div class="container">
        <div class="row justify-content-center align-items-center intro">
          <div class="col-md-7 text-center element-animate">
            <h2>About Us</h2>
            <p>CityBook provides wide range of information to millions of people in the city. We turn your information into actions and connect you to different things around.It is more than a simple search. Find what you love and travel where ever you wish to.</p>
            <p><a href="about.html" class="btn btn-black">Get More</a></p>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
    
    
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