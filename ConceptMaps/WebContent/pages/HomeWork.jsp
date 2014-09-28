<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Home work</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="/resoures/css/bootstrap.css">
<link rel="stylesheet" href="/resouress/css/bootstrap-theme.css">

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

	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="navbar navbar-default">
					<div class="navbar-header">
						<ul class="nav navbar-nav">
							<li><a href="Draw.jsp"><span
									class="glyphicon glyphicon-pencil"></span> Làm bài</a></li>
							<li class="active"><button type="button"
									class="btn btn-default btn-lg" data-toggle="modal"
									data-target="#modal_submit">Nộp bài</button></li>
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
			<div class="col-sm-9">
				<!-- Nội dung page  -->
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-5">...</div>
							<div class="col-xs-7">
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
												<label class="col-sm-5 control-label">Ngày bắt đầu:</label>
												<p class="col-sm-6 control-label">20/09/2014</p>
											</div>
											<div class="row">
												<label class="col-sm-5 control-label">Ngày kết thúc:</label>
												<p class="col-sm-6 control-label">27/09/2014</p>
											</div>
											<div class="row">
												<label class="col-sm-5 control-label">Tình trạng</label>
												<p class="col-sm-6 control-label">Đã làm</p>
											</div>
											<div class="row">
												<label class="col-sm-5 control-label">Điểm số:</label>
												<p class="col-sm-6 control-label">7</p>
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

		<!-- Start modal new file --------------------------------------------------- -->

		<div class="modal fade" id="modal_submit" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Submit</h4>
					</div>
					<div class="modal-body">
						<form role="form">
							<p>Điểm:
							<p>Vị trí thiếu liên kết:
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End modal new file --------------------------------------------- -->

	<script type="text/javascript"	src="/resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/resoures/js/bootstrap.min.js"></script>
</body>
</html>



