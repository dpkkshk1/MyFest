<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyFest.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <style>
html{
scroll-behavior:smooth;
}

.dropdown-navi {
	right: 50%;
	: auto;
	text-align: center;
	transform: translate(-50%, 0);
    width: 300px !important;
    /* height: 400px !important; */
    }
 .model-open{
 padding-right:0 !important;
 
 }
 .active{
  background-color:#d90000;
  color:#fff;

}
 
 .opaque-navbar {
    background-color: rgba(0,0,0,0.5);
  /* Transparent = rgba(0,0,0,0) / Translucent = (0,0,0,0.5)  */
    height: 60px;
    border-bottom: 0px;
    transition: background-color .5s ease 0s;
}

.opaque-navbar.opaque {
    background-color: black;
    height: 60px;
    transition: background-color .5s ease 0s;
}

ul.dropdown-menu {
    background-color: black;
}


@media (max-width: 992px) {
  body
  {
    background:red;
  }
  .opaque-navbar {
    background-color: black;
    height: 60px;
    transition: background-color .5s ease 0s;
}

}
 
 </style> 
 
 
  <script type="text/javascript">
 /*  $(document).ready(function(){
	  $('ul li a').click(function(){
	    $('li a').removeClass("active");
	    $(this).addClass("active");
	});
	}); */
  $(window).scroll(function() {
	    if($(this).scrollTop() > 50)  /*height in pixels when the navbar becomes non opaque*/ 
	    {
	        $('.opaque-navbar').addClass('opaque');
	    } else {
	        $('.opaque-navbar').removeClass('opaque');
	    }
	});
  
  </script>
</head>
<body class="model-open" data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse navbar-fixed-top opaque-navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">MyFest</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li ><a href="#myhome">Home</a></li>
      <li><a href="#myevents">Events</a></li>
      <li><a href="#mygallery">Gallery</a></li>
      <li><a href="#myteam">Team</a></li>
      <li><a href="#mycontact">Contact Us</a></li>
      <c:if test="${obUser eq null}">
      
       <li><a  data-toggle="modal" data-target="#login">Login/Signup</a></li>
      </c:if>
      
      
      <c:if test="${obUser ne null}">
      <li class="dropdown" >
    <a class="dropdown-toggle" data-toggle="dropdown">Hello, ${obUser.name}
    <span class="caret" ></span></a>
    <ul class="dropdown-menu">
      <li><a style="color:white;" data-toggle="modal" data-target="#viewprofile">View Profile</a></li>
      <li><a style="color:white;" href="#">Register in Team</a></li>
      <li><a style="color:white;" href="logout">Logout</a></li>
    </ul>
  </li>
      
 <!--      <li class="dropdown" id="menu">
    <a class="dropdown-toggle glyphicon glyphicon-bell" data-toggle="dropdown" id="notification">
    <span class="caret" id="nota"  style="background: black;"></span></a>
   	<ul id="nota" class="dropdown-menu dropdown-nav" style="background: black;"></ul></a>
  </li> -->
  	<li class="dropdown"><a
						class="dropdown-toggle glyphicon glyphicon-bell " id="notification"
						style="color: yellow" href="#" data-toggle="dropdown"></a>
						<ul id="nota" class="dropdown-menu dropdown-nav" style="background: black;">
						</ul></li>
      
      
      
      </c:if>
      
    </ul>
  </div>
</nav>

<section id="myhome">
 <style>
/*
Fade content bs-carousel with hero headers
Code snippet by maridlcrmn (Follow me on Twitter @maridlcrmn) for Bootsnipp.com
Image credits: unsplash.com
*/

/********************************/
/*       Fade Bs-carousel       */
/********************************/
.fade-carousel {
    position: relative;
    height: 100vh;
}
.fade-carousel .carousel-inner .item {
    height: 100vh;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity:1 ;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    text-shadow: 1px 1px 0 rgba(0,0,0,.75);
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h1 {
    font-size: 6em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
    opacity: 0;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
}
.fade-carousel .carousel-inner .item.active .hero {
    opacity: 1;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
}

/********************************/
/*            Overlay           */
/********************************/
.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 2;
    background-color: #080d15;
    opacity: .7;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 10px 40px;}
.btn.btn-hero,
.btn.btn-hero:hover,
.btn.btn-hero:focus {
    color: #f5f5f5;
    background-color: #1abc9c;
    border-color: #1abc9c;
    outline: none;
    margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 100vh;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339134316-0e91dc9ded92?q=75&fm=jpg&s=883a422e10fc4149893984019f63c818); 
}
.fade-carousel .slides .slide-2 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339684178-3a239570f315?q=75&fm=jpg&s=c39d9a3bf66d6566b9608a9f1f3765af);
}
.fade-carousel .slides .slide-3 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339276121-ba1dfa199912?q=75&fm=jpg&s=9bf9f2ef5be5cb5eee5255e7765cb327);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
    .hero { width: 980px; }    
}
@media screen and (max-width: 640px){
    .hero h1 { font-size: 4em; }    
}


</style>
<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <!-- Overlay -->
  <div class="overlay"></div>

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>MyFest</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>MyFest</h1>        
            <h3>Event Management is not an Easy Task</h3>
        </hgroup>       
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are amazing</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
  </div> 
</div>

</section>

		<section id="myevents" style="padding-top:5%;">
     	

<link rel="stylesheet" href="../../css/card.css">


<h1><center>My Events</center></h1>
  <section style="padding-top:100px; margin-top:-5%; margin-bottom:5%;">
     
	<title>Events</title>

	<div class="container-fluid">
		<div class="row">
			<c:forEach items="${eventlist}" var="events">
				<div class="col-md-4 col-lg-3 col-sm-6 " style="margin-bottom:3%">
					<div class="flip-card" style="margin: 0 auto; position: relative;">
						<div class="flip-card-inner">
							<div class="flip-card-front">
								<img src="../../images/${events.photoPath}.jpg"
									class="img-thumbnail" alt="event"
									style="width: 100%; height: 100%; padding: 0;">
							</div>
							<div class="flip-card-back">
								<table style="margin: 0px auto;">
									<tbody style="text-align: left;">
										<tr>
											<td class="noborder">TeamSize - Max(${events.maxSize})
												Min(${events.minSize})</td>
										</tr>
										<tr>
											<td class="noborder">Allowed Teams -
												${events.allowedTeams}</td>
										</tr>
										<tr>
											<td class="noborder">Fee - ${events.fee} INR</td>
										</tr>
										<tr>
											<td class="noborder">${events.location}</td>
										</tr>
										<tr>
											<td>

												<button type="button"
													style="color: #F74307; text-align: right;"
													data-toggle="modal"
													data-target="#model${events.superVisor.superId}">
													${events.superVisor.superName}</button>
											</td>
										</tr>
										<!-- <tr>
											<td>
												<button type="button" class="btn btn-success">Register</button>
												<a style="color:white; font-weight: bold; font-style: normal;" ><i >Register</i></a>
											</td>
										</tr> -->
									</tbody>
								</table>
							</div>
							<div id="btn_register" data-toggle="modal" data-dismiss="modal" data-target="#myeventregister${events.eventId}">REGISTER
							</div>
							
							
						</div>
					</div>
					<div class="modal fade text-center" id="myeventregister${events.eventId }" >
  					<div class="modal-dialog modal-dialog-centered ">
    				<div class="modal-content">
    				 <div class="modal-header">
         <h4>Register Team </h4>
          <button href="/home" type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        
         <link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
      <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
        <div class="form-group">
   
    <input type=hidden name="eventId" class="form-control" id="eventidTeam${events.eventId }" value="${events.eventId }">
  </div>
          <div class="form-group">
    <label for="${events.eventId }">Team Name:</label>
    <input type="text" name="teamname" class="form-control" id="teamNamee${events.eventId }">
  </div>
						<%-- <input class="input100"  type="hidden" name="eventId"  value="${events.eventId }">
						<input class="input100"  type="text" name="teamname" placeholder="Enter Team Name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-group" aria-hidden="true"></i>
						</span> --%>
					</div>
					<div class="container-login101-form-btn">
							
							<button type="button" id="registerTeam${events.eventId }" class="btn btn-success">Submit</button>
						</div>
       
       
       <!--   <script>
         $(function(){
        	    $("#teamnn").on("click", function(event) {
        	        event.preventDefault();
        	console.log("clicked");

        	
        	
        	 var formData ={"name":$('input[name=name]').val()};
        	 console.log(formData);
             $.ajax({
                 url: "http://localhost:9898/registerTe",
                 contentType : 'application/json; charset=utf-8',
                 type: "post",
                 dataType:"application/json",
                 data: JSON.stringify( formData),
                  beforeSend:function(xhr){
                 	xhr.setRequestHeader("Accept","application/json");
                 	xhr.setRequestHeader("Content-Type","application/json");
                 	
                 	
                 },
                 success: function(d) {
                     alert(d);
                 }
             });   });
         })  
         
         
          	$(document).
		ready(function() {
			$('#teamnn').on('click',function() {
				$.ajax({type : 'POST',url : 'http://localhost:9898/registerTe',dataType:'json',data:{"name":$('input[name=name]').val()},
		success : function(html) {
			 $('#afterTeamRegistration').modal('show');
			console.log(html);
			
			}
				});
				});
			});
         	$('#afterTeamRegistration').modal('show'); 
         </script>
          -->
       </div>
  
    				
    				</div>
    				</div>
    				</div>
				</div>
				<!-- Modal -->
				<div class="modal fade" tabindex="-1"
					id="model${events.superVisor.superId}" role="dialog"
					aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalCenterTitle"
									style="color: blue; text-align: center; font-style: cursive, sans-serif">SuperVisor
									Profile</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="text-center">
									<img src="../../images/teacher.jpg" id="img-rounded"
										alt="teacher">
								</div>
								<table style="margin: 10px auto; text-align: center">
									<tr>
										<td>${events.superVisor.superName }</td>
									</tr>
									<tr>
										<td>${events.superVisor.superEmail}</td>
									</tr>
									<tr>
										<td>${events.superVisor.superDesignation}(${events.superVisor.superDepartment})</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<script >
				$(document).
				ready(function() {
					var ob=${events.eventId };
					var ob1="#registerTeam"+ob;
					$(ob1).on('click',function() {
						var teamName = document.getElementById("teamNamee"+ob).value
						var teamEventId = document.getElementById("eventidTeam"+ob).value
						$.ajax({type : 'POST',
							url : 'http://localhost:1111/registerTe',
							contentType : 'application/json; charset=utf-8',
							dataType:'json',
							
							data:JSON.stringify({"name":teamName,"eventId":{"eventId":teamEventId}}),
							success : function(html) {
								console.log(html);
							if(html.messsage=="Success"){
								alert("You Team is Registered");
								
								$('#myeventregister'+ob).modal('hide');
								$('#thisdiv').load(document.URL +  ' #thisdiv');
								$('#afterTeamRegistration'+ob).modal('show');
								
								
								
							}else{
								alert("Registration Failed Please Try Again");
							}
					
					}
						});
						});
					});

				</script>
				 <div class="modal fade text-center" id="formteam${events.eventId }" >
  					<div class="modal-dialog modal-dialog-centered ">
    				<div class="modal-content">
    				
    				<div class="modal-header">
    				<h4 class="modal-title">Form Team </h4>
          <button href="/home" type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        
         <link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	
	     <c:forEach var = "i" begin = "1" end = "${events.minSize }">
		<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" id="minTeamCount${ i }${ events.eventId }" name="minTeamCount${ i }" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
</c:forEach> 

					<div class="container-login101-form-btn">
						<button class="login101-form-btn" id="sendFriendRequestBtn${events.eventId }">
							Register
						</button>
					</div>
         
       </div>
  				  </div>
  				</div>
			</div>	
			<script type="text/javascript">
		$(document).
		ready(function() {
			$('#notification').on('click',function() {
				$.ajax({type : 'GET',url : 'http://localhost:1111/all',dataType:'json',
		success : function(html) {
			$("#nota").empty();
			console.log(html);
			$.each(html, function(index, object){
				
				$('#nota').append("<div><h5 style='color:aqua'> A team Request Sent by "+object.teamLeaderId.name+" Team Name "+object.name+"</h5>"+
				
				"</div><div><a href='requestAccept?teamId="+object.teamId+"'><button type='button' class='btn btn-success btn-sm'>Accept</button></a><a href='requestDelete?teamId="+object.teamId+"'><button type='button' class='btn btn-danger btn-sm'>Decline</buttom></a></div>");
			});
			}
				});
				});
			});
	
		</script>
			
			<script >
			$(document).
			ready(function() {
				var ob=${events.eventId };
				var ob1="#sendFriendRequestBtn"+ob;
				var minSize=${events.minSize };
				$(ob1).on('click',function() {
					var joinTeamm="";
					alert("hey");
					
					
					for(var i=1;i<=minSize;i++){
						
						var oiu="minTeamCount"+i+ob;
						var a=document.getElementById(oiu).value;
						if(i==minSize)
						joinTeamm=joinTeamm+a;
						else
							joinTeamm=joinTeamm+a+",";
						
					}
					
					$.ajax({type : 'POST',
						url : 'http://localhost:1111/insertDetails',
					
						contentType : 'application/json; charset=utf-8',
						dataType:'json',
						
						data:JSON.stringify({"joinTeam":joinTeamm}),
						
						
						success : function(html) {
							console.log(html);
						if(html.messsage=="Success"){
							alert("You Team is Registered");
							
							$('#formteam'+ob).modal('hide');
							
							
							
							
						}else{
							alert("Registration Failed Please Try Again");
						}
				
				}
					});
		
					});
				});
			
			</script>

				       <div class="modal fade"  id="afterTeamRegistration${events.eventId }">
  <div class="modal-dialog modal-dialog-centered ">
    <div class="modal-content">
      <div class="modal-header">
      <h4>Choice is Yours!!!!!!</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
   
       <div class="container-login101-form-btn">
						<button class="login101-form-btn" data-toggle="modal" data-dismiss="modal" data-target="#formteam${events.eventId }">
							Form <br>Team Now
						</button>
						</div>
					
					<div class="container-login101-form-btn">
						<button class="login101-form-btn" id="closeTeamFormReg" data-dismiss="modal">
							Form <br>Team Later
						</button>
					</div>
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->	
				
				
			</c:forEach>

		</div>
	</div>
</section>
			
		
	</section>






<section id="mygallery" style="padding-top:5%;">
<style>

.btn:focus, .btn:active, button:focus, button:active {
  outline: none !important;
  box-shadow: none !important;
}

#image-gallery .modal-footer{
  display: block;
}

.thumb{
  margin-top: 15px;
  margin-bottom: 15px;
}
</style>
<script>

let modalId = $('#image-gallery');

$(document)
  .ready(function () {

    loadGallery(true, 'a.thumbnail');

    //This function disables buttons when needed
    function disableButtons(counter_max, counter_current) {
      $('#show-previous-image, #show-next-image')
        .show();
      if (counter_max === counter_current) {
        $('#show-next-image')
          .hide();
      } else if (counter_current === 1) {
        $('#show-previous-image')
          .hide();
      }
    }

    /**
     *
     * @param setIDs        Sets IDs when DOM is loaded. If using a PHP counter, set to false.
     * @param setClickAttr  Sets the attribute for the click handler.
     */

    function loadGallery(setIDs, setClickAttr) {
      let current_image,
        selector,
        counter = 0;

      $('#show-next-image, #show-previous-image')
        .click(function () {
          if ($(this)
            .attr('id') === 'show-previous-image') {
            current_image--;
          } else {
            current_image++;
          }

          selector = $('[data-image-id="' + current_image + '"]');
          updateGallery(selector);
        });

      function updateGallery(selector) {
        let $sel = selector;
        current_image = $sel.data('image-id');
        $('#image-gallery-title')
          .text($sel.data('title'));
        $('#image-gallery-image')
          .attr('src', $sel.data('image'));
        disableButtons(counter, $sel.data('image-id'));
      }

      if (setIDs == true) {
        $('[data-image-id]')
          .each(function () {
            counter++;
            $(this)
              .attr('data-image-id', counter);
          });
      }
      $(setClickAttr)
        .on('click', function () {
          updateGallery($(this));
        });
    }
  });

// build key actions
$(document)
  .keydown(function (e) {
    switch (e.which) {
      case 37: // left
        if ((modalId.data('bs.modal') || {})._isShown && $('#show-previous-image').is(":visible")) {
          $('#show-previous-image')
            .click();
        }
        break;

      case 39: // right
        if ((modalId.data('bs.modal') || {})._isShown && $('#show-next-image').is(":visible")) {
          $('#show-next-image')
            .click();
        }
        break;

      default:
        return; // exit this handler for other keys
    }
    e.preventDefault(); // prevent the default action (scroll / move caret)
  });


</script>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

<div class="container">
<h1><center>My Gallery</center></h1>
	<div class="row">
		<div class="row">
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Test1"
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>



            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>



            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="Another alt text">
                </a>
            </div>
        </div>


        <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="image-gallery-image" class="img-responsive col-md-12" src="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary float-left" id="show-previous-image"><i class="fa fa-arrow-left"></i>
                        </button>

                        <button type="button" id="show-next-image" class="btn btn-secondary float-right"><i class="fa fa-arrow-right"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

</section>

<section id="myteam" style="padding-top:5%; margin-bottom:5%;">
	      <style>
        
   .box14{position:relative}
.box15,.box17,.box18{box-shadow:0 0 5px #7e7d7d;text-align:center}
.box14:before{content:"";width:100%;height:100%;background:rgba(0,0,0,.5);position:absolute;top:0;left:0;opacity:0;transition:all .35s ease 0s}
.box14:hover:before{opacity:1}
.box14 img{width:100%;height:auto}
.box14 .box-content{width:90%;height:90%;position:absolute;top:5%;left:5%}
.box14 .box-content:after,.box14 .box-content:before{content:"";position:absolute;top:0;left:0;bottom:0;right:0;opacity:0;transition:all .7s ease 0s}
.box14 .box-content:before{border-bottom:1px solid rgba(255,255,255,.5);border-top:1px solid rgba(255,255,255,.5);transform:scale(0,1);transform-origin:0 0 0}
.box14 .box-content:after{border-left:1px solid rgba(255,255,255,.5);border-right:1px solid rgba(255,255,255,.5);transform:scale(1,0);transform-origin:100% 0 0}
.box14:hover .box-content:after,.box14:hover .box-content:before{opacity:1;transform:scale(1);transition-delay:.15s}
.box14 .title{font-size:21px;font-weight:700;color:#fff;margin:15px 0;opacity:0;transform:translate3d(0,-50px,0);transition:transform .5s ease 0s}
.box14:hover .title{opacity:1;transform:translate3d(0,0,0)}
.box14 .post{font-size:14px;color:#fff;padding:10px;background:#d79719;opacity:0;border-radius:0 19px;transform:translate3d(0,-50px,0);transition:all .7s ease 0s}
.box14 .icon,.box15 .icon{padding:0;list-style:none}
.box14:hover .post{opacity:1;transform:translate3d(0,0,0);transition-delay:.15s}
.box14 .icon{width:100%;margin:0;position:absolute;bottom:-10px;left:0;opacity:0;z-index:1;transition:all .7s ease 0s}
.box14:hover .icon{bottom:20px;opacity:1;transition-delay:.15s}
.box14 .icon li a{display:block;width:40px;height:40px;line-height:40px;border:1px solid #fff;border-radius:0 16px;font-size:14px;color:#fff;margin-right:5px;transition:all .4s ease 0s}
.box14 .icon li a:hover{background:#d79719;border-color:#d79719}
@media only screen and (max-width:990px){.box14{margin-bottom:30px}
}
   
        </style>
        <h1><center>My Team</center></h1>
         <div class="container mt-40">
  
            <div class="row mt-30">
              <div class="col-md-4 col-sm-6" >
                    <div class="box14">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo122/images/img-3.jpg" alt="">
                        <div class="box-content">
                            <h3 class="title">Phani Kumar </h3>
                            <span class="post">Front-End Developer @MyFest</span>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box14">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo122/images/img-3.jpg" alt="">
                        <div class="box-content">
                            <h3 class="title">Rajat Kumar</h3>
                            <span class="post">Back-End Developer @MyFest</span>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                               
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box14">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo122/images/img-3.jpg" alt="">
                        <div class="box-content">
                            <h3 class="title">Deepak Kaushik</h3>
                            <span class="post">Front-End Developer @MyFest</span>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                            
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6" style="margin-top:5%">
                    <div class="box14">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo122/images/img-3.jpg" alt="">
                        <div class="box-content">
                            <h3 class="title">Abesh Chowdhury</h3>
                            <span class="post">Back-End Developer @MyFest</span>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                              
                            </ul>
                        </div>
                    </div>
                </div>
               
                <div class="col-md-4 col-sm-6" style="margin-top:5%">
                    <div class="box14">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo122/images/img-3.jpg" alt="">
                        <div class="box-content">
                            <h3 class="title">Garvit Tyagi</h3>
                            <span class="post">Developer @MyFest</span>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                               
                            </ul>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
	  </section>
<section id="mycontact">
<link rel="stylesheet" href="../css/footer.css" >
  <footer class="footer-distributed" style="height:100%; position:relative;" >

      <div class="footer-left">

        <a href="#" class="logo"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPZx9cQUxIcR_-mH7lKQCzTvgqOr_3OgYZZ-gv72UlV3xgVYGfw" style="width:45px;height:45px;" align="middle"  alt="Megalith"/></a>

        <p class="footer-links">
          CHNIJ004
          @CTS<br>
          Chennai
          <br>
          TamilNadu-600097
        </p>
     
        
      </div>

        <div class="footer-center"><i class="fa fa-phone" ></i>
       Contact Us
        <div>
          
          <a  href="https://www.facebook.com/cognizant" target="_blank"> <p>&nbsp; Batch-1 :</p>  <p style="font-family: serif;">
            
            +91 8008309613</p></a>
        </div>
         <div>
          
           <a href="https://www.facebook.com/profile.php?id=100008187847751" target="_blank"><p> Deepak Kaushik :</p> <p style="font-family: serif;">  +91 9080706050</p></a> 
        </div>
       

       

      </div>

      <div class="footer-right"> 
         <div>
          <i class="fa fa-envelope" style="font-color:white"></i> Mail us here
          <p><a href="#" style="color:#972829;">info@myfest.com</a></p>
        </div>
         <div class="footer-icons" style="font-color:white">
            follow us here
           <br>
          <a target="_blank" href="https://www.facebook.com/myfest/?ref=br_rs"><i class="fa fa-facebook"></i></a>
          <a target="_blank" href="https://twitter.com/myfest"><i class="fa fa-twitter"></i></a>
          <a target="_blank" href="https://www.linkedin.com/myfest/"><i class="fa fa-linkedin"></i></a>
          <a target="_blank" href="https://www.instagram.com/myfest/"><i class="fa fa-instagram"></i></a>
          <a target="_blank" href="https://www.youtube.com/channel/myfest"><i class="fa fa-youtube"></i></a>
        </div>

        

      </div>
			<div class="row" style="color:white">
				<div class="col-md-6  col-xs-12  self" style="font-color:white" > &copy MyFest.com &nbsp | &nbsp Cognizant</div>
				
			</div>
    </footer>
</section>

<!-- View Profile -->
<div class="modal fade text-center" id="viewprofile" >
  					<div class="modal-dialog modal-dialog-centered">
    				<div class="modal-content">
    				 <div class="modal-header">
          <h4>View Profile </h4>
          <button href="/home" type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
      ${obUser.name }
        </div>
        
  				  </div>
  				</div>
			</div>	
			<!-- Event Team Registration -->
			
			
<!-- Login Modal -->

<div class="modal fade text-center" id="login" >
  					<div class="modal-dialog modal-dialog-centered ">
    				<div class="modal-content">
    				
  <div class="modal-header">
          <h4>Login </h4>
          <button href="/home" type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
       
         <link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button  class="login100-form-btn" id="loginSubmit">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
						<a class="txt2" href="regiteruser" data-dismiss="modal"data-toggle="modal" data-target="#userregistration" >
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
     
       </div>
       
  				  </div>
  				</div>
			</div>	
			
			<!-- User Registration Modal -->		
			 <div class="modal fade text-center" id="userregistration" >
  					<div class="modal-dialog modal-dialog-centered ">
    				<div class="modal-content">
    				
    				<div class="modal-header">
    				<h4>Register as User</h4>
          <button href="/home" type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
    
         <link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="username" placeholder="Name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="text" name="mobile" placeholder="Mobile No">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="text" name="stream" placeholder="Stream">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-book" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="text" name="course" placeholder="Course">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-book" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="text" name="useremail" placeholder="email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="registrationUserButton">
							Register
						</button>
					</div>
      
       </div>
  				  </div>
  				</div>
			</div>
			<!-- User Registration Team Form now or later -->	
			
			<!--        <div class="modal fade"  id="afterTeamRegistration">
  <div class="modal-dialog modal-dialog-centered ">
    <div class="modal-content">
      <div class="modal-header">
      <h4>Choice is Yours!!!!!!</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
   
       <div class="container-login101-form-btn">
						<button class="login101-form-btn" data-toggle="modal" data-dismiss="modal" data-target="#formteam">
							Form <br>Team Now
						</button>
						</div>
					
					<div class="container-login101-form-btn">
						<button class="login101-form-btn" id="closeTeamFormReg">
							Form <br>Team Later
						</button>
					</div>
      </div>

    </div>/.modal-content
  </div>/.modal-dialog
</div>/.modal	 -->

			    

			<%--  <div class="modal fade text-center" id="formteam" >
  					<div class="modal-dialog modal-dialog-centered ">
    				<div class="modal-content">
    				
    				<div class="modal-header">
    				<h4 class="modal-title">Form Team </h4>
          <button href="/home" type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         
         <link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	
		<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" id="minTeamCount${ i }" name="minTeamCount${ i }" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>


					<div class="container-login101-form-btn">
						<button class="login101-form-btn">
							Register
						</button>
					</div>
         
       </div>
  				  </div>
  				</div>
			</div>	
 --%>
<script >

$(document).ready(function(){
	closeTeamFormReg
	$('#closeTeamFormReg').on('click',function(){
		$('#afterTeamRegistration').modal('hide');
		
	});
});

$(document).
ready(function() {
	$('#loginSubmit').on('click',function() {
		
		$.ajax({type : 'POST',
			url : 'http://localhost:1111/loginnn',
			contentType : 'application/json; charset=utf-8',
			dataType:'json',
			
			data:JSON.stringify({"email":$('input[name=email]').val(),"password":$('input[name=password]').val()}),
			success : function(html) {
	
			if(html.messsage=="Success"){
				alert("Login Successfull");
				$('#login').modal('hide');
				window.location.reload();
				
			}else{
				alert("User Name Or Password Is wrong");
			}
	
	}
		});
		});
	});
$(document).
ready(function() {
	$('#registrationUserButton').on('click',function() {
		
		$.ajax({type : 'POST',
			url : 'http://localhost:1111/registration',
			contentType : 'application/json; charset=utf-8',
			dataType:'json',
			
			data:JSON.stringify({"name":$('input[name=username]').val(),"mobile":$('input[name=mobile]').val(),"stream":$('input[name=stream]').val(),"course":$('input[name=course]').val(), "email":$('input[name=useremail]').val(),"password":$('input[name=password]').val()}),
			success : function(html) {
				console.log(html);
			if(html.messsage=="Success"){
				alert("Registration Successfull Please login to Continue");
				$('#userregistration').modal('hide');
				$('#login').modal('show');
				
				
			}else{
				alert("Registration Failed Please Try Again");
			}
	
	}
		});
		});
	});
/* registrationUserButton
$(document).
ready(function() {
	$('#teamnn').on('click',function() {
		$.ajax({type : 'POST',url : 'http://localhost:9898/registerTe',dataType:'json',data:{"name":$('input[name=name]').val()},
success : function(html) {
	 $('#afterTeamRegistration').modal('show');
	console.log(html);
	
	}
		});
		});
	}); */


</script>

</body>
</html>