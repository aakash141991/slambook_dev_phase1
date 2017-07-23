<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/header.css" type="text/css" />

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
</head>
<body class="header-body">

   <div class="header">
        <div class="logo">
            <img src="images/logo.png" alt="" />
        </div>
        <div class="tabs">
           <a href="javascript:void(0)" class="logout">Logout</a>
            
        </div>
    </div>
</body>
</html>