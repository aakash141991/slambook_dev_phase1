<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/home.css" type="text/css" />
<script src="jars/jquery-3.2.1.min.js"></script>
<script src="js/home.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body >
<jsp:include page="includes/header.jsp" />
<div id="pageContainer">
	<div class="left-view">
	<div ><img class="profile_img" src="images/profile.jpg" /></div>
		<ul class="activity-links">
			<li><c:out value=" ${user.firstName }"></c:out></li>
			<li>Connections</li>
			<li ><a id="clickadd" href="javascript:void(0)">Add</a></li>
		</ul>
	</div>
	<div class="center-view"></div>
	 <div class="right-view"></div>
	
</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>