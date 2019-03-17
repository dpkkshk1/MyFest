<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>MyFest.com</title>
		<meta name="title" content="Megalith 2018 IIT Kharagpur">
	<meta name="description" content="The Annual Tech-fest of Civil Engineering Department" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0 minimal-ui" />
		<link rel="shortcut icon" href="http://2017.megalith.co.in/wp-content/icon/logomega.ico">

		<link href="http://2018.megalith.co.in/resources/assets/new css/css" rel="stylesheet">
		<link rel="stylesheet" href="http://2018.megalith.co.in/resources/assets/css/bootstrap.css">
	<!-- some defalt style -->

		<link href="http://2018.megalith.co.in/resources/assets/new css/style.css" rel="stylesheet" type="text/css">
		<link href="http://2018.megalith.co.in/resources/assets/new css/styles.css" rel="stylesheet" type="text/css">
   	 	<link href="http://2018.megalith.co.in/resources/assets/new css/font-awesome.min.css" rel="stylesheet" type="text/css">
    	<link href="http://2018.megalith.co.in/resources/assets/new css/magnific-popup.css" rel="stylesheet" type="text/css">
    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Overpass+Mono:400,700" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Gochi+Hand" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="http://2018.megalith.co.in/resources/css3/normalize.css" />
		<link rel="stylesheet" type="text/css" href="http://2018.megalith.co.in/resources/css3/demo.css" />
		
		<!-- css for footer -->

		<link href="http://2018.megalith.co.in/resources/css3/footer-distributed-with-address-and-phones.css" rel="stylesheet">
		 <script src="http://2018.megalith.co.in/resources/assets/js/modernizr.custom.js"></script>
     <!-- Custom styles for this template -->

<style type="text/css">


#canvas{
                width:100%;
                height:900px;
                overflow: hidden;
                position:absolute;
                top:0;
                left:0;
                             
            }
            .canvas-wrap{
                position:relative;
                
            }
            div.canvas-content{
                position:relative;
                z-index:2000;
                color:#fff;
                text-align:center;
                padding-top:30px;
            }

html, body{
  height: 100%;
  font-size: 1em;

}

body,.modal-content {
 
  color: #fff;
  background: linear-gradient(-45deg, #fdff00, rgba(253, 65, 65, 0.8), #fdb840, #A8FF00 );
  background-size: 2000% 2000%;
  -webkit-animation: Gradient 15s ease infinite;
  -moz-animation: Gradient 15s ease infinite;
  animation: Gradient 15s ease infinite;
}


@-webkit-keyframes Gradient {
  0% {
    background-position: 0% 50%
  }
  50% {
    background-position: 100% 50%
  }
  100% {
    background-position: 0% 50%
  }
}

@-moz-keyframes Gradient {
  0% {
    background-position: 0% 50%
  }
  50% {
    background-position: 100% 50%
  }
  100% {
    background-position: 0% 50%
  }
}

@keyframes Gradient {
  0% {
    background-position: 0% 50%
  }
  50% {
    background-position: 100% 50%
  }
  100% {
    background-position: 0% 50%
  }
}


#bell{
			position:fixed;
			padding-top:5px;
			margin-top:250px;
			border:2px solid #9b31ad;
			right: 5%;
			border-radius:100%;
			width:40px;
			height:40px;
			text-align:center;
			
		}

	.main-nav {
		background:#292c2f;
	}


		@media screen and (max-width: 1024px) {
			.dropdown-menu {
				display:block;
			}
		}
/* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's not present, don't show loader */
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con {
  position: fixed;
  left: 0px;
  top: 0px;
  width: 100%;
  height: 100%;
  z-index: 9999;
  background: url(http://2018.megalith.co.in/resources/loader/loader-color.gif) 
  center no-repeat #fff;
}
	@media screen and (min-width: 1024px) {
	.height {
	  			line-height: 1.3 !important;
    			height: auto !important;
				}
	}
	
	@media screen and (max-height: 420px) {
	.hs-line-2  {
	  			margin-bottom:0px;
				}
		.hs-line-1 {
			font-size:2.5em;
			margin-bottom:10px !important;
		}
		.headimglogo {
			height:70px !important;
			width:70px !important;
		}
		
	}
    </style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script>
	//paste this code under head tag or in a seperate js file.
	// Wait for window load
	$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
</script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  		<style>
			.ie-message { display: inline-block; }
  		</style>
		<![endif]-->
		<script>document.documentElement.className = 'js';</script>
	</head>
	<body>
		  <!-- Paste this code after body tag -->
  <div class="se-pre-con"></div>
  <!-- Ends -->
				<!-- Navigation panel-->
    <nav class="main-nav white stick-fixed js-transparent transparent">
      <div class="full-wrapper relative clearfix">
				 <div class="nav-logo-wrap" style="margin-right:0px;"><a href="#" class="logo"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPZx9cQUxIcR_-mH7lKQCzTvgqOr_3OgYZZ-gv72UlV3xgVYGfw" style="width:45px;height:45px;" align="middle"  alt="logomega"/></span></a></div>
        <div class="nav-logo-wrap"><a href="#" class="logo">MyFest.com<span  class="higl"></span></a></div>
        <div class="navbar-mobile" style="height: 75px; line-height: 75px; width: 75px;"><i class="fa fa-bars"></i></div>
        	<div class="inner-nav navbar-desktop">
         		 <ul class="clearlist scroll scroll-nav">
 								
           			 <li><a class="active" href="http://2018.megalith.co.in/Home" style="height: 75px; line-height: 75px;">Home</a></li>
                <li> <a href="#about" data-start="display: block" data-100-start="display: none"  style="height: 75px; line-height: 75px;" class="">Events</a></li>
				  <!-- <a href="#about" data-start="display: block" data-100-start="display: none" class="btn-scroll-down scroll skrollable skrollable-between" style="display: block;"></a>			   -->
                 <li><a href="http://2018.megalith.co.in/Gallery" style="height: 75px; line-height: 75px;" class="">Gallery</a></li>
							 
           			 <li><a  href="http://2018.megalith.co.in/Contact" style="height: 75px; line-height: 75px;">Contact us</a></li> 
									
							   </li>
          				
								<li><a  href="http://2018.megalith.co.in/Team" style="height: 75px; line-height: 75px;">Team</a></li> 
						
          		</ul>
        	</div>
      </div>
    </nav>
			
      <!--Start section hero-->
    <section id="hero" class="full-screen canvas-wrap gradient" >
		
             <div  id="os-phrases" class="hero-content ">
                <div class="hero-content-inner os-phrases">
              
                   <div class="hero-content-inner">
										 <marquee behavior="scroll" class="marq" direction="left" scrollcount="5" style="position:relative;">
										
		</marquee>
									
										  <div data-wow-delay="0.5s" data-wow-duration="3s" class="hs-line-2 wow fadeInDown"><img class="headimglogo" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPZx9cQUxIcR_-mH7lKQCzTvgqOr_3OgYZZ-gv72UlV3xgVYGfw" style="width:95px;height:95px;opacity:.75;" align="middle"  alt="logomegalith"/></div>
										 
                     <h1 data-wow-delay="0.5s" data-wow-duration="3s" class="hs-line-1 wow fadeIn" style="font-family:Calibri;margin-bottom:20px;"  style="visibility: visible; animation-duration: 3s; animation-delay: 0.5s; animation-name: fadeIn;">MyFest</h1>
										<div data-wow-delay="0.5s" data-wow-duration="3s" class="hs-line-2 wow fadeInDown">An Easy way of Event Management <br></div>
										 <!--div data-effect="fadeInUp" class="mt-30 animate-e"><a href="http://2018.megalith.co.in/registration" class="scroll btn btn-coffee btn-border-w btn-round btn-medium" style="margin-bottom:30px;"><span style="font-weight:600;">Register Now</span></a><span>&nbsp; &nbsp;</span></div-->
               </div>
                </div>
             <div id="canvas"></div>
          </div>
              <a href="#about" data-start="display: block" data-100-start="display: none" class="btn-scroll-down scroll skrollable skrollable-between" style="display: block;"></a>

     </section>
		
		<!-- Trigger the modal with a button -->


<!-- Modal -->

		<section id="about" >
     	
		<%@include file="events.jsp" %>
			
		
	</section>
	              
 
	  <footer class="footer-distributed">

      <div class="footer-left">

        <a href="#" class="logo"><img src="http://2018.megalith.co.in/resources/img/megalogotheme.png" style="width:45px;height:45px;" align="middle"  alt="Megalith"/></a>

        <p class="footer-links">
          Department of Civil
          Engineering<br>
          IIT Kharagpur
          <br>
          West Bengal-721302
        </p>
     
        
      </div>

        <div class="footer-center"><i class="fa fa-phone"></i>
       Contact Us
        <div>
          
          <a  href="https://www.facebook.com/uttamsuman.suman" target="_blank"> <p>&nbsp; Uttam Kumar Suman :</p>  <p style="font-family: serif;">
            
            +91 7477771333</p></a>
        </div>
         <div>
          
           <a href="https://www.facebook.com/profile.php?id=100008187847751" target="_blank"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ritik Singh :</p> <p style="font-family: serif;">  +91 9453985681 </p></a> 
        </div>
        <div>
         
          <a href="https://www.facebook.com/chetan.agarwal.146612" target="_blank"> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chetan Agarwal :</p> <p style="font-family: serif;"> +91 7432077888</p></a>
        </div>

       

      </div>

      <div class="footer-right"> 
         <div>
          <i class="fa fa-envelope"></i> Mail us here
          <p><a href="#" style="color:#972829;">info@megalith.co.in</a></p>
        </div>
         <div class="footer-icons">
            follow us here
           <br>
          <a target="_blank" href="https://www.facebook.com/megalithkgp/?ref=br_rs"><i class="fa fa-facebook"></i></a>
          <a target="_blank" href="https://twitter.com/megalithkgp"><i class="fa fa-twitter"></i></a>
          <a target="_blank" href="https://www.linkedin.com/company/6611693/"><i class="fa fa-linkedin"></i></a>
          <a target="_blank" href="https://www.instagram.com/iitkgp.megalith/"><i class="fa fa-instagram"></i></a>
          <a target="_blank" href="https://www.youtube.com/channel/UColF5e7SjdkiOBrFrg0UTRw"><i class="fa fa-youtube"></i></a>
        </div>

        

      </div>
			<div class="row" >
				<div class="col-md-6  col-xs-12  self" > &copy MyFest.com &nbsp | &nbsp Cognizant</div>
				
			</div>
    </footer>
		<!-- body finish-->
		<script type="text/javascript" src="http://2018.megalith.co.in/resources/assets/js/jquery-1.10.2.js"></script>
		<script type="text/javascript" src="http://2018.megalith.co.in/resources/assets/js/bootstrap.js"></script>
		 <!-- header animation Script -->
    <!-- Main library -->
    <script src="http://2018.megalith.co.in/resources/js/three.min.js"></script>

    <!-- Helpers-Header -->
		<script src="http://2018.megalith.co.in/resources/js/projector.js"></script>
    <script src="http://2018.megalith.co.in/resources/js/canvas-renderer.js"></script>

    <!-- Visualitzation adjustments -->
    <script src="http://2018.megalith.co.in/resources/js/3d-lines-animation.js"></script>

   <!-- Animated background color -->
   <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
   <script src="http://2018.megalith.co.in/resources/js/color.js"></script>
<!-- Script for Heading -->
    <script src="http://2018.megalith.co.in/resources/js/jquery-2.1.1.js"></script>
    <script src="http://2018.megalith.co.in/resources/js/main (2).js"></script> <!-- Resource jQuery --> 
<!-- Custom scripts for this template -->
  		 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   		 <!-- Latest compiled and minified JavaScript -->
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <!--JS sctipts-->
    	<script src="http://2018.megalith.co.in/resources/assets/js/plagins.js.download"></script>
    	<script src="http://2018.megalith.co.in/resources/assets/js/owl.carousel.min.js.download"></script>
    	<script src="http://2018.megalith.co.in/resources/assets/js/main.js.download"></script>


    	<script src="http://2018.megalith.co.in/resources/js/imagesloaded.pkgd.min.js"></script>
		<script src="http://2018.megalith.co.in/resources/js/anime.min.js"></script>
		<script src="http://2018.megalith.co.in/resources/js/scrollMonitor.js"></script>
		<script src="http://2018.megalith.co.in/resources/js/demo2.js"></script>
		

	</body>
</html>