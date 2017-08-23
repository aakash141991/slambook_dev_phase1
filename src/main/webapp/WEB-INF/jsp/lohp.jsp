<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<script>
function callRest() {
	 
	    	$.ajax({ 
	             type: "GET",
	             dataType: "json",
	             url: "http://localhost:8080/slambookRest/rest/hello",
	             success: function(data){  
	            	 console.log(data);
	                alert(data);
	             }
	         });
		
}
</script>
<%-- <%@include  file="./WEB-INF/includes/loggedOutHeader.html" %> --%>
<jsp:include page="includes/loggedOutHeader.jsp" />

<%-- <div id="main-wrap">
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
 
 <div>
 <button onclick="callRest()">call rest</button>
 </div>
 
	<div class="registration-form">
		<div class="registration-heading">Create an account</div> 
	
			<form:form commandName="userForm" action="registrationSubmit.html" method = "post">
		<table cellspacing="10" style="none" >
		<p class="error">${errors.firstName }</p>
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
			<input class="create-button" type="submit" value="Create an Account"></td>
		</div>
		
	</form:form>
	</div>
</div>
</div> --%>


<div class="container ">
	<div class="row first-row-loggedout">
		<div class="col-md-6 col-xs-6 left-lohp">
		
		</div>
		<div class="col-md-6 col-xs-6 right-lohp ">
							<div class="registration-heading">Create an account</div> 
					<div class="reg-form">
					
						<form:form commandName="userForm"  action="registrationSubmit.html" method = "post">
								<div class="form-group">
									<form:input path="firstName" placeholder="First Name"/>
									<span>&nbsp&nbsp&nbsp&nbsp</span><form:input path="lastName" placeholder="Last Name" />
								</div>
								
								<div class="form-group">
									<form:input path="email" placeholder=" Email address"/>
									<span>&nbsp&nbsp&nbsp&nbsp</span>
									<td><form:input path="mobile" placeholder=" Mobile"/></td>
								</div>
								<div class="align-password">
									<div class="form-group">
									<form:input type="password"  path="password" placeholder="New Password"/>
								</div>
								<div class="form-group">
									<input type="password"   placeholder="Confirm Password"/>
								</div>
								
								</div>
								
							
						<div class="form-group align-button-submit">
							<input class="create-button" type="submit" value="Create an Account"></td>
						</div>
						
						
					</form:form>
					</div>
	
       
		</div>
	</div>
	<div class="row second-row-loggedout">
		<div class="col-md-4 text-center article1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tempus urna quis magna pellentesque molestie. Nam non quam mollis, porta odio id, ultricies neque. Mauris nec molestie neque. Aliquam fringilla, eros vitae ultricies malesuada, quam velit tincidunt tellus, rutrum fermentum lorem odio aliquet est. Integer rhoncus, turpis at tristique vestibulum, urna urna blandit eros, nec auctor arcu leo non quam. Vestibulum maximus, risus vel dapibus facilisis, diam dui condimentum enim, quis ultricies nisl metus eget leo. Mauris non maximus velit. Aenean vel nibh porttitor leo tincidunt mattis eget sit amet turpis. Duis at risus lorem. Suspendisse accumsan lorem sit amet urna ultricies, nec feugiat nunc efficitur</div>
		<div class="col-md-4 text-center article2">Mauris volutpat commodo diam. Maecenas eget tortor id ante molestie dictum. Nulla fermentum augue sed orci posuere, ut auctor nibh sodales. Integer eget justo lacinia, semper sapien sit amet, lobortis orci. Proin luctus, justo eu venenatis mollis, orci turpis ullamcorper ante, vitae volutpat leo enim eget sem. Aenean ultrices lobortis diam sed placerat. Ut eget arcu odio. Donec facilisis rutrum blandit.</div>
		<div class="col-md-4 text-center article3"> Phasellus sagittis ac diam eu dignissim. Sed dignissim ligula id ipsum mattis aliquet. Mauris risus sem, imperdiet nec pretium sed, finibus ac lectus. Integer dignissim justo enim, sed sagittis elit placerat vitae. In suscipit scelerisque egestas. Nam consectetur euismod eros a aliquam. Nunc eu dapibus arcu, eget eleifend nulla. Duis id nisl mattis, pellentesque sem ultrices, scelerisque ipsum. Pellentesque turpis massa, tincidunt sit amet finibus in, bibendum id mi.</div>
	</div>
	<div class="row ">
		<img class="mySlides " src="images/cat-group.jpeg" style="width: 100%; margin-top: 40px" >
	</div>
	<div class="row"></div>

</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>