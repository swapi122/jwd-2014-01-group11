<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Concept Maps</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="resoures/css/bootstrap.css">
<link rel="stylesheet" href="resouress/css/bootstrap-theme.css">
<link rel="stylesheet" href="resoures/css/signin.css">

<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>

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
				<a class="navbar-brand" href="home.jsp">Concept Maps</a>
			</div>
			<div class="navbar-collapse collapse">
				<form class="navbar-form navbar-right" role="form" action = "authentication" method="post">
					<div class="form-group">
						<input type="text" name = "email" placeholder="Email" class="form-control">
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

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Chào mừng bạn đã đến Concept maps!</h1>
			<p>Tạo và chia sẽ các sơ đồ khái niệm.</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button" href="http://en.wikipedia.org/wiki/Concept_map">Learn more &raquo;</a>
			</p>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			<p class="text-muted">&copy; group11 2014</p>
		</div>
	</div>
</body>
</html>