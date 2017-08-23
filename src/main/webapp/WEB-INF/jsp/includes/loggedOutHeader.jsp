<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/lohp.css" type="text/css" />
<script src="jars/jquery-3.2.1.min.js"></script>
<script src="js/lohp.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/external/bootstrap.min.js" type="text/javascript"></script>
<style type="text/css">
.navbar{
	font-family:Arial, Helvetica, sans-serif;
	   background-color:maroon;
}
</style>
<title>Slambook</title>
</head>
<body>
<script>
function showLoginModal() {
	  $('#loginModal').modal('show');
	}
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
    var url= "/me?fields=name,email,gender ";
    var person = "";
    FB.api(url, function(response) {
    	
      console.log('Successful login for: ' + response.name);
      var id=response.id;
      var name=response.name;
      var gender =response.gender;
      var email= response.email;
     // person = {id:id,name:name,gender:gender,email:email};
     var person = { name:"John", gender:"male", email:"kxksajxkaj" };
      console.log(person);
      FB.api("/me/picture?width=180&height=180",  function(picResponse) {

          console.log(picResponse.data.url);

  	}); 
   /*    FB.api("/"+id+"/friends",  function(response) {

          console.log(response);

  	}); */
  	
    /*   $.ajax({
    	  type: "POST",
    	  contentType: "application/json; charset=utf-8",
    	  url: "registrationFbUser.html",
    	  data: person,
    	  dataType:"json",
    	  success: function(msg){
    	       alert('wow'+msg);
    	   }
    	}); */
 
    }, {scope: 'email '});
   

   
  }
</script>

    <%--    <div class="header">
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
        </div> --%>
        
        
        
        <!-- making responsive -->
        
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img src="images/logo.png" alt="" /></a>
    </div>
    <ul class="nav navbar-nav navbar-right header-items">
    <li class="fb-login-button"><fb:login-button class="fb-login" scope="public_profile,email" onlogin="checkLoginState();">
        </fb:login-button></li>
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a onclick="showLoginModal()"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<!-- login modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >Login to Slambook</h4>
      </div>
      <div class="modal-body">
        		 <div>
                <form:form commandName="loginForm" action="loginSubmit.html" method = "post">
                    
                    <div class="form-group">
                        <label for="email" >Email</label>
                        <form:input class="form-control" path="email" />
                    </div>
                    <div class="form-group">
                        <label for="email" >Password</label>
                        <form:input class="form-control" type="password"  path="password" />
                    </div>
                        <input  class="btn btn-footer" type="submit" value="Login" name="loginForm">
              </form:form>
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-footer" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Login modal ends -->
</body>
</html>