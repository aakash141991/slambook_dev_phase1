<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mybook.css" type="text/css" />
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
	
		<jsp:include page="includes/menu.jsp" /> 
			
			
			<!-- main content -->
			<div class="col col-md-8" id="select-Books">
			 <div ng-if="slambooks.length >0">
				<div  ng-repeat="slambook in slambooks">
						<div class=" col col-md-4" ng-click="showSlambook( slambook)">
								<div class="slam-box">
									<div >
										<img class="template-img" alt="" src="{{slambook.templateImageUrl}}">
										<span class="addBookText" ng-bind="slambook.slambookName"></span>
									</div>
									
									<div class="addBookText" >
										<span>Pages</span>
										<span ng-bind="slambook.slambookPages.length"></span>
									</div>
								</div>
							
						</div>
				</div>
			</div>
			
				<div class="col col-md-4" ng-click="showTempModal()">
				<img class="template-img" alt="" src="images/icons/add.svg"><br>
				<a class="addBookText" href="javascript:void(0)">Add a book</a>
				</div>
				
			</div>
			
			<!-- main content ends -->
			
			<!-- main slambook first page -->
			<div id="show-book" class="col col-md-8">
			  <div  ng-show="firstPage">
			  
			 <button class="next-page" ng-click="nextPage()">next-page >></button>
			 <div class="transbox-title text-center">
			   <span>Hey Its My book  &#9786 </span> <span><c:out value=" ${user.firstName }"></c:out></span>
			 </div>
			 
			 
			
			<div class="row slambook-frontpage-row" >
					<div>
						<div class="transbox-front-page col col-md-4 ">
							   <li><img class="profile_img" src="${user.profileImg}" /></li>
							   <div ng-if="firstPage.nickName">
							   <li> <span ng-bind="firstPage.nickName"></span></li>
							   </div>
							   <div ng-else>
							   		<li> <input type="text" placeholder="My NickName ?"></li>
							   </div>
							  
				 		</div>
						 <div class="transbox-front-page col col-md-6 ">
							 <ul>
									 <li> Tell your Friends about Yourself</li>
									   <li><input type="text" placeholder="I love color ? "></li>
									   <li><textarea rows="6" cols="30" placeholder="Some words about yourself..."></textarea></li>
							 </ul>
				   
				 			</div>
					</div>
					
					
			</div>
			
			</div><!-- first page ends -->
			
			<div  ng-show="!firstPage">
				
			
			</div>
			</div> 
			
	</div>
	
	
	</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>