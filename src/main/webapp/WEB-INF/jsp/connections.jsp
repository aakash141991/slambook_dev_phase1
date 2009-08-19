<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<link rel="stylesheet" href="css/connections.css" type="text/css" />
<script src="js/connections.js" type="text/javascript"></script>
</head>


<body>
<jsp:include page="includes/header.jsp" />
<div class="container">
	<div class="row" ng-app="myApp" ng-controller="ConnectionsController"  ng-init="init()">
	<jsp:include page="includes/menu.jsp" /> 
	
	<div class="col col-md-8">
				
			  <div class="connections row" id="connections">
				  	<c:forEach items = "${friends}" var = "friend">
				  	
				   			<div class="col col-md-6">
				   			<div class="friend-box text-center">
						       	<img class="friend-img" src="${friend.profileImg}">
						       	<br>
						       	<div>
						       	<c:out value=" ${friend.firstName }"></c:out>&nbsp&nbsp<c:out value=" ${friend.lastName }"></c:out>
						       	</div>
						       	<br>
						      </div> 	
						     </div>
						       
      				</c:forEach>
						<div  id="load-more-row">
						
							<a id="load-more" >Load more</a>
							
						</div>
				  </div>
				
		</div>
		
		<div class="col col-md-2">
		
		</div>
	</div>
</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>