<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.header{
   min-height: 80px;
	font-family:Arial, Helvetica, sans-serif;
	   background-color: maroon;
}

</style>
</head>
<body class="header-body">

       <div class="header">
        <div class="logo">
            <img src="images/logo.png" alt="" />
        </div>
        <div class="header_login">
            <div>
                <form:form commandName="loginForm" action="loginSubmit.html" method = "post">
                    
                    <div class="input-username">
                        <label class="lable">Email</label>
                        <form:input path="email" />
                    </div>
                    <div class="input-password">
                        <label class="lable">Password</label>
                        <form:input type="password"  path="password" />
                    </div>
                        <input  class="login-submit" type="submit" value="Login" name="loginForm">
              </form:form>
            </div>
            
        </div>
        </div>
</body>
</html>