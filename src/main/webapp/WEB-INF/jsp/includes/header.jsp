<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/header.css" type="text/css" />
<script src="jars/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/external/bootstrap.min.js" type="text/javascript"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
<script type="text/javascript">
$( document ).ready(function() {
	$(".logout").click(function(){
		alert("logout");
		$.ajax({
		    url: location.origin + "/slambook/logout",
		    success: function(){
		    	window.location = location.origin + "/slambook";
		    }
		});
	})
});


</script>
<style type="text/css">
.navbar{
	font-family:Arial, Helvetica, sans-serif;
	   background-color: maroon;
}
.header-items{
	font-size:20px;
}
.header-search{
padding-top:10px;
padding-right: 20px;
}
.search-button{
background-color: 	#7CFC00;
}
</style>
</head>
<body >

   <!-- <div class="header">
        <div class="logo">
            <img src="images/logo.png" alt="" />
        </div>
        <div class="tabs">
	        <a href="javascript:void(0)" class="logout">Logout</a>
	        <a href="" class="header-icons" ><img src="images/icons/notify.png" alt="" /></a>
	        <a href="" class="header-icons" ><img src="images/icons/message.png" alt="" /></a>
	        <a href="" class="header-icons" ><img src="images/icons/friend-icon.png" alt="" /></a>
	        <a href="" class="header-icons" ><img src="images/icons/slam-icon.png" alt="" /></a>
	        
	        
	            
        </div>
    </div> -->
    
   <nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand logo" href="#"><img src="images/logo.png" alt="" /></a>
		    </div>
					    
		    <!-- right items -->
		    <ul class="nav navbar-nav navbar-right header-items">
		      <li class="header-search"><input type="text"  placeholder="Search" /><button class=" glyphicon glyphicon-search search-button"></button></li>
		      <li><a href="javascript:void(0)" class="  glyphicon glyphicon-globe"></a></li>
		      <li><a href="javascript:void(0)" class=" glyphicon glyphicon-envelope"></a></li>
		      <li><a href="javascript:void(0)" class="glyphicon glyphicon-user"></a></li>
		      <li><a href="javascript:void(0)" class="glyphicon glyphicon-book"></a></li>
		      <li><a href="javascript:void(0)" class="logout">Logout</a></li>
		    </ul>
		  </div>
</nav>
</body>
</html>