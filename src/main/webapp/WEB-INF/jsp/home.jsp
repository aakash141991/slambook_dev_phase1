<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/home.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="js/home.js" type="text/javascript"></script>

<title>Home</title>
</head>
<body >
<jsp:include page="includes/header.jsp" />
<%-- <div id="pageContainer">
	<div class="left-view">
	<div ><img class="profile_img" src="images/profile.jpg" /></div>
		<ul class="activity-links">
			<li><c:out value=" ${user.firstName }"></c:out></li>
			<li><a  href="javascript:void(0)">Connections</a></li>
			<li ><a  href="javascript:void(0)">My SLambuk</a></li>
			<li ><a id="clickadd" href="javascript:void(0)">Add</a></li>
		</ul>
	</div>
	<div class="center-view">
		<div ng-app="myApp" ng-controller="searchController" ng-init="init('${user}')">
		</div>
	</div>
	 <div class="right-view"></div>
	
</div> --%>

<div class="container">
	<div class="row" ng-app="myApp" ng-controller="homeController" ng-init="init()">
		<%-- <div class="col col-md-2">
		
			<div ><img class="profile_img" src="${user.profileImg}" /></div>
			<ul class="activity-links">
				<li><c:out value=" ${user.firstName }"></c:out></li>
				<li ><a ng-click="home" href="javascript:void(0)">Home</a></li>
				<li ><a ng-click="getConnections.html" href="javascript:void(0)" >Connections</a></li>
				<li ><a  href="myBook.html">My SLambuk</a></li>
				<li ><a id="clickadd" href="javascript:void(0)">Add</a></li>
			</ul>
			</div> --%>
			<jsp:include page="includes/menu.jsp" /> 
			
		<div class="col col-md-8">
				
				  <!-- home -->
				  <div id="homePage" class="row">
				  I will post some thing here	
				  </div>
				  
				  <!-- friends -->
				  
				
				
		</div>
		<div class="col col-md-2">
		
		</div>
	</div>

</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>