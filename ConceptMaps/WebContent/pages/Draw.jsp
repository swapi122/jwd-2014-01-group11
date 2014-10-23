<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Draw</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="resoures/css/bootstrap.css">
<link rel="stylesheet" href="resoures/css/bootstrap-theme.css">

</head>
<body style="padding-top: 100px">
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
							<li><a href="thongtincanhan.jsp">Thông tin cá nhân</a></li>
							<li><a href="#">Đăng xuất</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			</div>
		</div>
	</div>


	<!--  -->
	<div class="container">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">

				<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<div class="collapse navbar-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><button type="button"
										class="btn btn-default btn-lg">
										<span class="glyphicon glyphicon-floppy-disk"></span> Save
									</button></li>
								<li><button type="button" class="btn btn-default btn-lg">Cancel</button></li>
								<li><button type="button" class="btn btn-default btn-lg">
										<span class="glyphicon glyphicon-chevron-left"></span> Undo
									</button></li>
								<li><button type="button" class="btn btn-default btn-lg">
										<span class="glyphicon glyphicon-chevron-right"></span> Redo
									</button></li>
								<li><button type="button" class="btn btn-default btn-lg">
										<span class="glyphicon glyphicon-remove"></span> Delete
									</button></li>
								<li><img style="width: 70px; height: 45px" alt="Node"
									src="../data/img/elip.png"></li>
								<li><button type="button" class="btn btn-default btn-lg">
										<span class="glyphicon glyphicon-arrow-down"></span> line
									</button></li>
								<li><div class="dropdown">
										<button class="btn btn-default dropdown-toggle btn-lg" type="button"
											id="dropdownMenu1" data-toggle="dropdown">
											Color <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><button type="button" class="btn btn-default"
													style="width: 158px">Default</button></li>
											<li><button type="button" class="btn btn-primary"
													style="width: 158px">Xanh đậm</button></li>
											<li><button type="button" class="btn btn-success"
													style="width: 158px">Xanh lá</button></li>
											<li><button type="button" class="btn btn-info"
													style="width: 158px">Xanh nhạt</button></li>
											<li><button type="button" class="btn btn-warning"
													style="width: 158px">Vàng</button></li>
											<li><button type="button" class="btn btn-danger"
													style="width: 158px">Đỏ</button></li>
										</ul>
									</div></li>
							</ul>

						</div>
					</div>
				</div>
				</nav>
			</div>
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-body">
						<textarea class="form-control" rows="3"></textarea>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="footer">
		<div class="container">
			<p class="text-muted">&copy; group11 2014</p>
		</div>
	</div>


	<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>
</body>
</html>



