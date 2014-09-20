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
<link rel="stylesheet" href="../resoures/css/bootstrap.css">
<link rel="stylesheet" href="../resouress/css/bootstrap-theme.css">
<link rel="stylesheet" href="../resoures/css/signin.css">

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
					<li><a href="#">Thông báo <span class="badge">3</span></a></li>
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

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Chào mừng bạn đến Concept maps!</h1>
			<p>Tạo và chia sẽ các sơ đồ khái niệm.</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button"
					href="http://en.wikipedia.org/wiki/Concept_map">Learn more
					&raquo;</a>
			</p>
		</div>
	</div>
	<!--  -->
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
									<li><a href="#">Edit</a></li>
									<li><a href="#">Delete</a></li>
									<li><a href="#">Share</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
				<div class="panel panel-default">
					<ul class="nav nav-sidebar">
						<li class="active"><a href="#">Overview</a></li>
						<li><a href="#">Concept map 1</a></li>
						<li><a href="#">Concept map 2</a></li>
						<li><a href="#">Concept map 3</a></li>
					</ul>
					<ul class="nav nav-sidebar">
						<li><a href="">Concept map 4</a></li>
						<li><a href="">Concept map 5</a></li>
						<li><a href="">Concept map 6</a></li>
						<li><a href="">Concept map 7</a></li>
						<li><a href="">Concept map 8</a></li>
					</ul>
					<ul class="nav nav-sidebar">
						<li><a href="">Concept map 9</a></li>
						<li><a href="">Concept map 10</a></li>
						<li><a href="">Concept map 11</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-9">
				<div class="navbar navbar-default">
					<ul class="nav navbar-nav">
						<li>
							<form class="navbar-form navbar-left" role="form">
								<h4>
									Tools &#124;
									<div class="form-group">
										<button type="button" class="btn btn-default">
											<span class="glyphicon glyphicon-floppy-disk"></span> Save
										</button>
										<button type="button" class="btn btn-default">Cancel</button>
										<button type="button" class="btn btn-default">
											<span class="glyphicon glyphicon-chevron-left"></span> Undo
										</button>
										<button type="button" class="btn btn-default">
											<span class="glyphicon glyphicon-chevron-right"></span> Redo
										</button>
										<button type="button" class="btn btn-default">
											<span class="glyphicon glyphicon-remove"></span> Delete
										</button>
									</div>

									<div class="form-group">
										<img style="width: 50px; height: 30px" alt="Node"
											src="../data/img/elip.png">
										<button type="button" class="btn btn-default">
											<span class="glyphicon glyphicon-arrow-down"></span> line
										</button>
									</div>
									<div class="form-group">
										<div class="dropdown">
											<button class="btn btn-default dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown">
												Color <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><button type="button" class="btn btn-default" style="width: 158px">Default</button></li>
												<li><button type="button" class="btn btn-primary" style="width: 158px">Xanh
														đậm</button></li>
												<li><button type="button" class="btn btn-success" style="width: 158px">Xanh
														lá</button></li>
												<li><button type="button" class="btn btn-info" style="width: 158px">Xanh
														nhạt</button></li>
												<li><button type="button" class="btn btn-warning" style="width: 158px">Vàng</button></li>
												<li><button type="button" class="btn btn-danger" style="width: 158px">Đỏ</button></li>
											</ul>
										</div>
									</div>
								</h4>
							</form>
						</li>
					</ul>
				</div>

				<div class="panel panel-default">
					<div class="panel-body">Basic panel example</div>
				</div>

			</div>
		</div>

		<div class="footer">
			<div class="container">
				<p class="text-muted">&copy; group11 2014</p>
			</div>
		</div>

		<!-- Start modal new file -->

		<div class="modal fade bs-example-modal-sm" id="modal_newfile" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">New concept map</h4>
					</div>
					<div class="modal-body">
						<form role="form">
							<input type="text" class="form-control"
								placeholder="Tên file" required autofocus>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Create</button>
					</div>
				</div>
			</div>
		</div>

		<!-- End modal new file  -->

		<script type="text/javascript"
			src="../resoures/js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../resoures/js/bootstrap.min.js"></script>
</body>
</html>



