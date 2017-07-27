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
<script>
function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else {
      // The person is not logged into your app or we are unable to tell.
     // 'Please log ' + 'into this app.';
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '419657308435159',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.10' // use graph api version 2.8
  });


  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    var url= "/me?fields=name,email ";
    FB.api(url, function(response) {
    	
      console.log('Successful login for: ' + response.name);
      console.log(response);
 
    }, {scope: 'email '});
    FB.api("/me/picture?width=180&height=180",  function(response) {

        console.log(response.data.url);

	}); 
   
  }
</script>

       <div class="header">
        <div class="logo">
            <img src="images/logo.png" alt="" />
        </div>
        <div class="header_login">
        <fb:login-button class="fb-login" scope="public_profile,email" onlogin="checkLoginState();">
        </fb:login-button>
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