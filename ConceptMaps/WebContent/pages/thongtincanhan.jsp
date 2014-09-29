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

	<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>
</body>
</html>