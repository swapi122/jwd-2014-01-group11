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
<link rel="stylesheet" href="resoures/css/signin.css">

<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>
</head>
</head>
<body>
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
					<div class="form-group">
						<label class="lbl-success"> 
							<input type="checkbox" name="remember" value="remember-me">Ghi nhớ
						</label>
					</div>
					<button type="submit" class="btn btn-success">Đăng nhập</button>
					<!-- <a class="btn btn-success" href="pages/work.jsp">Đăng nhập</a> -->
					<a class="btn btn-success" href="pages/register.jsp">Đăng ký</a>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>
	<div></div>

	<!-- Alert  -->
	<div class="container">
		<div class="form-signin">
			<div class="alert alert-warning alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<strong>Warning!</strong> Sai tên hoặc mật khẩu đăng nhập
			</div>
		</div>
	</div>

	<!-- Form signin -->
	<div class="container">
		<form class="form-signin" role="form" action="Authentication" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			<input type="email" name="email" class="form-control" placeholder="Email address"
				required autofocus> 
			<input type="password" name="password"	class="form-control" placeholder="Password" required> <label
				class="checkbox"> 
			<input type="checkbox" value="remember-me"> Ghi nhớ	</label>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Đăng	nhập</button>
			<br> <a href="#">Quên mật khẩu</a>
		</form>

	</div>
	<!-- /container -->

	<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>

</body>
</html>