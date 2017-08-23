<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/home.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="js/mybook.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="includes/header.jsp" />
<div class="container">
	<div class="row" ng-app="bookApp" ng-controller="bookController" ng-init="init()">
			
			
			<!-- modal for template selection begins -->
			<div class="modal fade" id="tempModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="exampleModalLabel">Choose Template</h4>
			      </div>
			      <div class="modal-body">
							
							<div class="row">
								<div class="col col-md-6" ng-repeat="x in templates">
								<div ng-click="createSlambook( x )">
									<div> <img class="template-img" alt="" src="{{x.imageUrl}}"></div><br>
									<div>{{x.tempName}}</div>
								</div>
									
								</div>
							</div>
			       
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
		</div>
		
		<!-- modal ends -->
		<!-- modal for slambook Name and create -->
				<div class="modal fade" id="slambookName" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title" id="exampleModalLabel">Give Your Book a name</h4>
					      </div>
					      <div class="modal-body">
					        	<input ng-model="slambookName" type="text" ng-max-length="20" placeholder="My Book">
					        	<button ng-click="saveMySlambook()" class="save-button">Save</button>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
		</div>
		
	     <!-- modal ends -->
	
		<div class="col col-md-2">
		
			<div ><img class="profile_img" src="${user.profileImg}" /></div>
			<ul class="activity-links">
				<li><c:out value=" ${user.firstName }"></c:out></li>
				<li ><a ng-click="showHome()" href="javascript:void(0)">Home</a></li>
				<li ><a ng-click="getConnections()" href="javascript:void(0)" >Connections</a></li>
				<li ><a  href="myBook.html">My SLambuk</a></li>
				<li ><a id="clickadd" href="javascript:void(0)">Add</a></li>
			</ul>
			</div>
			<!-- main content -->
			<div class="col col-md-8">
			<div>
			
			</div>
				<div  ng-click="showTempModal()">
				<img class="template-img" alt="" src="images/icons/add.svg"><br>
				<a class="addBookText" href="javascript:void(0)">Add a book</a>
				</div>
				
			</div>
			
			<!-- main content ends -->
	</div>
	
	
	</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>