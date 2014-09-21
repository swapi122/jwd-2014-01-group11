<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Share</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="../resoures/css/bootstrap.css">
<link rel="stylesheet" href="../resouress/css/bootstrap-theme.css">
<link rel="stylesheet" href="../resoures/css/bootstrap-datetimepicker.min.css">

<script type="text/javascript" src="../resoures/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../resoures/js/bootstrap.min.js"></script>
<!-- DatePicker -->
<script type="text/javascript" src="../resoures/js/moment.js"></script>
<script type="text/javascript" src="../resoures/js/bootstrap-datepicker.js"></script>
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

	<!-- ---------------------------------------------------------------------------------------------------------- -->
	
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-offset-5">
				<h1>Chia sẻ</h1>
			</div>
			<div class="col-md-10 col-sm-offset-1">
				<div class="panel panel-info">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3">
								<p>Tên concept map:
							</div>
							<div class="col-md-5">
								<p>Concept map 1
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<p>Ngày tạo:
							</div>
							<div class="col-md-5">
								<p>20/09/2014
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<p>Thời gian bắt đầu:
							</div>
							<div class="col-md-5">
								<div class="form-group">
									<div class="input-group date" id="datetimepicker_start">
										<input type="text" class="form-control" /> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-calendar"></span> </span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<p>Mô tả:
								<div class="panel panel-info">Concept maps quan hệ giữa
									các ...</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<b>Thành viên
									<button type="button" class="btn btn-primary btn-sm"
										data-toggle="modal" data-target="#modal_addMember">Thêm
										thành viên</button>
								</b>
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>STT</th>
											<th>Tên thành viên</th>
											<th>Email</th>
											<th>Loại chia sẽ</th>
											<th>Trạng thái</th>
											<th>Điểm số</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tbody>
										<tr class="success">
											<td>1</td>
											<td>Huỳnh Minh Trí</td>
											<td>hmtri92@gmail.com</td>
											<td>view</td>
											<td>false</td>
											<td></td>
											<td>
												<button type="button" class="btn btn-primary btn-sm"
													data-toggle="modal" data-target="#modal_delete">delete</button>
											</td>
										</tr>
										<tr class="success">
											<td>2</td>
											<td>Phan Thi Liên</td>
											<td>thilienphan@gmail.com</td>
											<td>Bài tập</td>
											<td>false</td>
											<td>8</td>
											<td>
												<button type="button" class="btn btn-primary btn-sm"
													data-toggle="modal" data-target="#modal_delete">delete</button>
											</td>
										</tr>
										<tr class="success">
											<td>3</td>
											<td>Phạm Quốc Dũng</td>
											<td>quocdungphampy@gmail.com</td>
											<td>Bài tập</td>
											<td>false</td>
											<td>9</td>
											<td>
												<button type="button" class="btn btn-primary btn-sm"
													data-toggle="modal" data-target="#modal_delete">delete</button>
											</td>
										</tr>
										<tr class="success">
											<td>4</td>
											<td>Lê Phúc Thịnh</td>
											<td>lpticy@gmail.com</td>
											<td>Bài tập</td>
											<td>true</td>
											<td>10</td>
											<td>
												<button type="button" class="btn btn-primary btn-sm"
													data-toggle="modal" data-target="#modal_delete">delete</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Start modal new file -->

	<div class="modal fade" id="modal_addMember" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Thêm thành viên</h4>
				</div>
				<div class="modal-body">
					<textarea rows="3" cols="85" class="form-control"
						placeholder="Email" required autofocus></textarea>
					<form class="form-inline" role="form">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-default"> <input type="radio"
								class="form-control"> Xem
							</label> <label class="btn btn-default"> <input type="radio"
								class="form-control"> Làm bài tập
							</label>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Add</button>
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
					<h4 class="modal-title" id="myModalLabel">Xóa thành viên</h4>
				</div>
				<div class="modal-body">
					<p>Bạn có muốn xóa thành viên này không?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">No</button>
					<button type="button" class="btn btn-primary">Yes</button>
				</div>
			</div>
		</div>
	</div>

	<!-- End modal delete  -->
<script type="text/javascript">
            $(function () {
                $('#datetimepicker_start').datetimepicker();
            });
        </script>


	

</body>
</html>