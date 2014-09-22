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
	<!-- end navbar -->

	<!-- Main jumbotron for a primary marketing message or call to action -->

	<!-- <div class="jumbotron">
		<div class="container">
			<h1>Chào mừng bạn đến Concept maps!</h1>
			<p>Tạo và chia sẽ các sơ đồ khái niệm.</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button"
					href="http://en.wikipedia.org/wiki/Concept_map">Learn more
					&raquo;</a>
			</p>
		</div>
	</div> -->

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
									<li><a href="Draw.jsp"><span
											class="glyphicon glyphicon-pencil"></span> Edit</a></li>
									<li><a data-toggle="modal" data-target="#modal_delete"><span
											class="glyphicon glyphicon-remove"></span> Delete</a></li>
									<li><a href="share.jsp"><span
											class="glyphicon glyphicon-link"></span> Share</a></li>
									<li><a href="HomeWork.jsp"><span
											class="glyphicon glyphicon-link"></span> Task</a></li>
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
			</div>
			<div class="col-sm-9">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-6">...</div>
							<div class="col-xs-6">
								<div class="panel panel-info">
									<div class="panel-body">
										<div class="form">
											<div class="row">
												<label class="col-sm-5 control-label">Tên concept
													map:</label>
												<p class="col-sm-6 control-label">Concept map 1</p>
											</div>
											<div class="row">
												<label class="col-sm-5 control-label">Ngày tạo:</label>
												<p class="col-sm-6 control-label">20/09/2014</p>
											</div>
											<div class="row">
												<label class="col-sm-5 control-label">Chia sẻ:</label> <a
													href="share.jsp" class="col-sm-6 control-label">Xem chi
													tiết</a>
											</div>

											<div class="row">
												<label class="col-sm-5 control-label">Mô tả:</label>
												<div class="col-md-7">
													<div class="panel panel-info">Concept maps quan hệ
														giữa các ...</div>
												</div>
											</div>
											<div class="row">
												<label class="col-sm-5 control-label">Tài liệu:</label>
												<div class="col-md-7">
													<textarea class="form-control" rows="3"></textarea>
												</div>
											</div>

										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="row">
							<div class="col-md-10 col-md-offset-1">
								<b>Bình luận</b>
								<textarea rows="3" cols="50" class="form-control"
									placeholder="Bình luận" required autofocus></textarea>
								<div class="row">
									<div class="col-md-2 col-md-offset-9">
										<button type="button" class="btn btn-primary">Bình
											luận</button>
									</div>
								</div>
								<div class="row">
									<div class="col-md-10 col-md-offset-1">
										<b>Minh Tri</b>
										<p>...
									</div>
								</div>
							</div>
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

		<!-- Start modal new file -->

		<div class="modal fade" id="modal_newfile" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">New concept map</h4>
					</div>
					<div class="modal-body">
						<form role="form">
							<input type="text" class="form-control" placeholder="Tên file"
								required autofocus>
							<textarea class="form-control" rows="3" placeholder="Mô tả"
								required autofocus></textarea>
							<textarea class="form-control" rows="3"
								placeholder="Link tài liệu" required autofocus></textarea>
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

		<!-- Start modal delete -->

		<div class="modal fade bs-example-modal-sm" id="modal_delete"
			tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Delete concept map</h4>
					</div>
					<div class="modal-body">
						<p>Bạn có muốn xóa file này không?
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">No</button>
						<button type="button" class="btn btn-primary">Yes</button>
					</div>
				</div>
			</div>
		</div>

		<!-- End modal delete  -->

		<!-- Start modal share -->

		<div class="modal fade bs-example-modal-sm" id="modal_checkShare"
			tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Chia sẻ</h4>
					</div>
					<div class="modal-body">
						<p>File này không được chia sẻ
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">No</button>
					</div>
				</div>
			</div>
		</div>

		<!-- End modal delete  -->

		<script type="text/javascript"
			src="../resoures/js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../resoures/js/bootstrap.min.js"></script>
</body>
</html>



