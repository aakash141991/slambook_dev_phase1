<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/lohp.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/lohp.js" type="text/javascript"></script>


</head>
<body>
<%-- <%@include  file="./WEB-INF/includes/loggedOutHeader.html" %> --%>
<jsp:include page="includes/loggedOutHeader.jsp" />

<div id="main-wrap">
<div class="left-view">
<button class="carousel-left" ">&#10094;</button>
  <button class="carousel-right" ">&#10095;</button>
<div class="w3-content w3-display-container">
  <img class="mySlides" src="images/img1.jpg" style="width:100%">
  <img class="mySlides" src="images/img2.jpg" style="width:100%">
  <img class="mySlides" src="images/img3.jpg" style="width:100%">
  <img class="mySlides" src="images/img4.jpg" style="width:100%"> 
</div>​
</div>
 <div class="right-view">
 
	<div class="registration-form">
		<div class="registration-heading">Create an account</div> 
	
			<form:form commandName="userForm" action="registrationSubmit.html" method = "post">
		<table cellspacing="10" style="none" >
		<%-- <p class="error">${errors.firstName }</p> --%>
			<tr>
				<td><form:input path="firstName" placeholder="First Name"/></td>
	  				
				<td><form:input path="lastName" placeholder="Last Name" /></td>
	  				
  			</tr>
  			<tr>
				<td><form:input path="email" placeholder=" Email address"/></td>
				<td><form:input path="mobile" placeholder=" Mobile"/></td>
			</tr>
  			<tr>
				<td><form:input type="password"  path="password" placeholder="New Password"/></td>
			</tr>
			
				
			
		</table>
		<div>
			<input type="submit" value="Create an Account"></td>
		</div>
		
	</form:form>
	</div>
</div>
</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>