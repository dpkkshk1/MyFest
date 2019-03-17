<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Options</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../styles/card.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

  <section style="padding-top:100px; margin-top:-5%; margin-bottom:5%;">
     
	<div class="container-fluid">
		<div class="row">
			<cc:forEach items="${eventlist}" var="events">
				<div class="col-md-4 col-sm-6 my-4">
					<div class="flip-card" style=" background:linear-gradient(30deg, #756e6e, #090d10); margin: 0 auto; position: relative;">
						<div class="flip-card-inner">
							<div class="flip-card-front">
								<img   src="../../img/${events.photoPath}.jpg"
									class="" alt="event"
									style="border-radius: 10%;  background:linear-gradient(30deg, #756e6e, #090d10); vertical-align:middle; margin-top:23%; height: 50%; width: 50%;">
							</div>
							<div class="flip-card-back wrapper">
								<table style="margin: 10px auto; text-align: center">
									<tbody>
										<tr>
											<td class="noborder">Event Name: ${events.eventId} ${events.eventName}</td>
										</tr>
										<tr>
											<td class="noborder">Team Max-Size: ${events.maxSize}</td>
										</tr>
										<tr>
											<td class="noborder">Team Min-Size: ${events.minSize}</td>
										</tr>
										<tr>
											<td class="noborder">Fee: ${events.fee}</td>
										</tr>
										<tr>
											<td class="noborder">Location: ${events.location}</td>
										</tr>
										<tr>
											<td class="noborder">Allowed Teams:
												${events.allowedTeams}</td>
										</tr>
										<tr>
											<td><button type="button" class="btn btn-info"
													data-toggle="modal" data-target="#model${events.superVisor.superId}">SuperVisor</button></td>
										</tr>
										<tr>
											<td><a href="/register?eventId=${events.eventId }" data-toggle="modal" data-target="#myModell${events.eventId }"><button type="button" class="btn btn-success">Register</button></a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
					
		
				<!-- Modal -->
			<div style="bgcolor:linear-gradient(30deg, #756e6e, #090d10);" class="modal fade" tabindex="-1" id="model${events.superVisor.superId}" role="dialog"
				aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalCenterTitle" style="color:blue; text-align:center; font-style: cursive, sans-serif">SuperVisor
								Profile</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true" >&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="text-center">
								<img src="../../img/teacher.jpg" id="img-rounded" alt="teacher" >
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
			<div class="modal fade text-center" id="myModell${events.eventId }"  >
  					<div class="modal-dialog modal-dialog-centered ">
    				<div class="modal-content">
  				  </div>
  				</div>
			</div>	
			</cc:forEach>
			
		</div>
	</div>
</section>
