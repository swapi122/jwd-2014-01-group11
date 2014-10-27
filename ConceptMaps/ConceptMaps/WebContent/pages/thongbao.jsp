<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Thông báo</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="resoures/css/bootstrap.css">
<link rel="stylesheet" href="resouress/css/bootstrap-theme.css">

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

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading">Message</div>
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
					<div class="panel-heading">Nội dung</div>
					<div class="panel-body">
						<div class="form">
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Tên concept map:</label>
								<p class="col-sm-5 control-label">Concept map 1</p>
							</div>
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Ngày tạo:</label>
								<p class="col-sm-5 control-label">20/09/2014</p>
							</div>
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Ngày bắt đầu:</label>
								<p class="col-sm-5 control-label">20/09/2014</p>
							</div>
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Ngày kết thúc:</label>
								<p class="col-sm-5 control-label">27/09/2014</p>
							</div>
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Tình trạng</label>
								<p class="col-sm-5 control-label">Đã làm</p>
							</div>
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Điểm số:</label>
								<p class="col-sm-5 control-label">7</p>
							</div>
							<div class="form-group">
								<label class="col-sm-4 col-md-offset-2 control-label">Mô tả:</label>
								<div class="col-md-6">
									<div class="panel panel-info">Concept maps quan hệ giữa
										các ...</div>
								</div>
							</div>
								<a class="col-sm-10 col-md-offset-2" href="Draw.jsp">Link làm bài</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>
</body>
</html>