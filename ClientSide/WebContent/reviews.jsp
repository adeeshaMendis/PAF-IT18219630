<%@page import="com.Review"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%
/*
  //Save---------------------------------
    if (request.getParameter("itemCode") != null)
    {
	Review reviewObj = new Review();
     String stsMsg = "";
    //Insert--------------------------
    if (request.getParameter("hidItemIDSave") == "")
     {
     stsMsg = itemObj.insertItem(request.getParameter("itemCode"),
     request.getParameter("itemName"),
     request.getParameter("itemPrice"),
     request.getParameter("itemDesc"));
     }
    else//Update----------------------
    {
    stsMsg = itemObj.updateItem(request.getParameter("hidItemIDSave"),
    request.getParameter("itemCode"),
    request.getParameter("itemName"),
    request.getParameter("itemPrice"),
    request.getParameter("itemDesc"));
    }
    session.setAttribute("statusMsg", stsMsg);
   } 
  
    //Delete-----------------------------
    if (request.getParameter("hidItemIDDelete") != null)
    {
     Item itemObj = new Item();
     String stsMsg =
     itemObj.deleteItem(request.getParameter("hidItemIDDelete"));
     session.setAttribute("statusMsg", stsMsg);
    }*/
	%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">

	<title>Reviews Management</title>
	
	<link rel="stylesheet" href="Views/bootstrap.min.css">
	<script src="Components/jquery-3.2.1.min.js"></script>
	<script src="Components/reviews.js"></script>
</head>

<body>
	<div class="container"><div class="row"><div class="col-6">
		
		<h1>Reviews Management</h1>
	
		<form id="formItem" name="formItem">
			 Review ID:
	 		<input id="reviewID" name="reviewID" type="text" class="form-control form-control-sm" readonly>
	 		
	 		<br> Review Type: <br> 
	 		<input id="reviewType" name="reviewType" type="text" class="fom-control form-control-sm">
	
			 <br> Review Description:
	 		<input id="reviewDesc" name="reviewDesc" type="text" class="form-control form-control-sm">
	 	
	 		<br> Rating Value:
	 		<input id="ratingValue" name="ratingValue" type="text" class="form-control form-control-sm">
	 		
	 		<br>
	 		<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
	 
	 		<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
		</form>
				
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
		<br>
		<div id="divItemsGrid">
		 <%
		 Review reviewObj = new Review();
		 out.print(reviewObj.readReviews());
		 %>
		</div>
		</div> </div> </div>
	</body>
</html>