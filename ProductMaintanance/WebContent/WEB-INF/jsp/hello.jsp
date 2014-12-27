<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.net.URLEncoder" %>
<html>
<head>
<title>Spring 3.0 MVC Series: Hello World - ViralPatel.net</title>
</head>
<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&appId=396519570510606&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<form:form action="login.do" commandName="loginCommand">
		<center>
			<h2>Login</h2>
			<h3>UserName:</h3>
			<form:input type="text" path="userName" />
			<h3>Password:</h3>
			<form:input type="text" path="password" />
			<input type="submit" value="Login" />
		</center>

		<script>
			window.fbAsyncInit = function() {
				FB.init({
					appId : '396519570510606',
					xfbml : true,
					version : 'v2.2'
				});
			};

			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) {
					return;
				}
				js = d.createElement(s);
				js.id = id;
				js.src = "//connect.facebook.net/en_US/sdk.js";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));

		</script>




		<div class="fb-like" data-share="true" data-width="450"
			data-show-faces="true"></div>

	<a href="facebookAuth.do">Login<div class="fb-login-button" data-max-rows="1" data-size="medium">Login</div></a>
	
		
	</form:form>
</body>
</html>