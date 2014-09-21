<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Thông tin cá nhân</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="../resoures/css/bootstrap.css">
<link rel="stylesheet" href="../resouress/css/bootstrap-theme.css">

</head>
<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="work.jsp">Concept Maps</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="work.jsp">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="thongbao.jsp">Thông báo <span class="badge">3</span></a></li>
					<li><a href="#">Trợ giúp</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Minh Trí <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a>Minh Trí</a></li>
							<li><a>hmtri92@gmail.com</a></li>
							<li class="divider"></li>
							<li><a href="#">Thông tin cá nhân</a></li>
							<li><a href="#">Đăng xuất</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			</div>
		</div>
	</div>
	<!-- end navbar -->

	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="navbar navbar-default">
					<div class="navbar-header">
						<ul class="nav navbar-nav">
							<li class="active"><button type="button"
									class="btn btn-default btn-lg" data-toggle="modal"
									data-target="#modal_newfile">New file</button></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Properties <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#"><span
											class="glyphicon glyphicon-pencil"></span> Edit</a></li>
									<li><a data-toggle="modal" data-target="#modal_delete"><span
											class="glyphicon glyphicon-remove"></span> Delete</a></li>
									<li><a href="share.jsp"><span class="glyphicon glyphicon-link"></span>
											Share</a></li>
									<li><a href="HomeWork.jsp"><span class="glyphicon glyphicon-link"></span>
											Task</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
				
				<div class="panel panel-primary">
					<div class="panel-heading">Solution</div>
					<div class="panel-body">
						<ul class="nav nav-sidebar">
							<li class="active"><a href="#">Overview</a></li>
							<li><a href="#">Concept map 1</a></li>
							<li><a href="#">Concept map 2</a></li>
							<li><a href="#">Concept map 3</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">Thông tin người dùng</div>
					<div class="panel-body">
						<div class="form">
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Họ tên:</label>
								<p class="col-sm-5 control-label">Huỳnh Minh Trí</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="../resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../resoures/js/bootstrap.min.js"></script>
</body>
</html>