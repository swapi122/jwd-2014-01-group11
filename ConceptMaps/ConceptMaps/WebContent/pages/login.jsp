<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" href="resoures/css/bootstrap.css">
	<link rel="stylesheet" href="resouress/css/bootstrap-theme.css">
</head>
</head>
<body style=" padding-top: 100px">
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Welcome">Concept Maps</a>
			</div>
			<div class="navbar-collapse collapse">
				<form class="navbar-form navbar-right" role="form" action="Authentication" method="post">
					<div class="form-group">
						<input type="email" name = "email" placeholder="Email" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" name = "password" placeholder="Password" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">Login</button>
					<!-- <a class="btn btn-success" href="pages/work.jsp">Đăng nhập</a> -->
					<a class="btn btn-success" href="Register">Register</a>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>
	<div></div>

	<!-- Alert  -->
	<div style="max-width: 400px; margin: 0px auto">
		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert">
				<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
			</button>
			<strong>Warning!</strong> Sai tên hoặc mật khẩu đăng nhập
		</div>
	</div>

	<!-- Form signin -->
	<div style="max-width: 300px; margin: 0px auto">
		<form role="form" action="Authentication" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			<input type="email" name="email" class="form-control" placeholder="Email address"
				required autofocus>
			</br>
			<input type="password" name="password"	class="form-control" placeholder="Password" required> <label
				class="checkbox"> 
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			<br> <a href="#">Quên mật khẩu</a>
		</form>

	</div>
	<!-- /container -->

	<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>

</body>
</html>