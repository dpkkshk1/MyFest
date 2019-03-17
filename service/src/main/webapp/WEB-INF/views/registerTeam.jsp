      <div class="modal-header">
         <h4>Register Team </h4>
          <button href="/home" type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         <form action="registerTeamControl" method="post" id="myform">
         <link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
      <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="name" placeholder="Enter Team Name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-group" aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login101-form-btn">
					<input class="login101-form-btn" type="button" id="teamnn" name="sub"
						data-toggle="modal" data-target="#afterTeamRegistration" value="Submit">
						 </div>
         </form>
         <script>
   /*       $(function(){
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
         })  */
         
         
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
         
       </div>
  