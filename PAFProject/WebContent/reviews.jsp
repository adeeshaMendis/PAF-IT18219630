<%@page import="model.Review"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">

	<title>Reviews Management</title>
	
	<link href="style.css" rel="stylesheet" />
	<link rel="stylesheet" href="Views/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="Components/jquery-3.5.0.min.js"></script>
	<script src="Components/reviews.js"></script>
</head>

<body>
		
		<p class="font-weight-bold">
				<center>
					<h1><u><i><b>Reviews Management</b></i></u></h1>
				</center>
					
			</p>
				
				<fieldset>
	
				<center> <legend><b>Add Review Details</b></legend> </center>
					<form id="formItem" name="formItem" class="border border-light p-5">
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm" > Review ID:</label>
						    <input type="text" id="reviewID" name="reviewID" class="form-control" readonly>						    
						</div>
																
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Review Type:</label>
	 						<input id="reviewType" name="reviewType" type="text" class="form-control form-control-sm">
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Review Description:</label>
	 						<input id="reviewDesc" name="reviewDesc" type="text" class="form-control form-control-sm">
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm"> Rating Value:</label>
	 						<input id="reviewValue" name="reviewValue" type="text" class="form-control form-control-sm">
						</div>
												
											<br> 
						<div id="alertSuccess" class="alert alert-success"></div>
						<div id="alertError" class="alert alert-danger"></div>	
						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary btn-lg btn-block"> 
						
					</form>
				
							
			</fieldset>
			
				
		<br>
			<center> 
		
		<div id="reviewGrid">
		<form method="post" action="reviews.jsp" class="table table-striped">
			 <%
		 		Review reviewObj = new Review();
				out.print(reviewObj.readReviews());
		 	 %>
		</form>
		</div>
				</center>
		
		</div> </div> 
	</body>
</html>