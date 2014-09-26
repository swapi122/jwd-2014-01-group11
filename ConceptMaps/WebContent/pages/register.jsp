<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Đăng ký</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="../resoures/css/bootstrap.css">
<link rel="stylesheet" href="../resouress/css/bootstrap-theme.css">
<link rel="stylesheet" href="../resoures/css/signin.css">

<script type="text/javascript" src="../resoures/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../resoures/js/bootstrap.min.js"></script>
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
				<a class="navbar-brand" href="../home.jsp">Concept Maps</a>
			</div>
			<div class="navbar-collapse collapse">
				<form class="navbar-form navbar-right" role="form">
					<div class="form-group">
						<input type="text" placeholder="Email" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Password" class="form-control">
					</div>
					<div class="form-group">
						<label class="lbl-success"> <input type="checkbox"
							value="remember-me">Ghi nhớ
						</label>
					</div>
					<!-- <button type="submit" class="btn btn-success">Đăng nhập</button> -->
					<a class="btn btn-success" href="work.jsp">Đăng nhập</a>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>

	<!--  -->

	<div class="registriContainer">
		<h3>Đăng ký tài khoản</h3>
		<div class="panel panel-success">
			<div class="panel-heading">Thông tin bắt buộc</div>
			<div class="panel-body">
				<div class="panel panel-default">
					<table class="table">
						<tr>
							<th><label>Tên tài khoản:</label></th>
							<th><input type="text" class="form-control"
								placeholder="Tên tài khoản" required autofocus></th>
						</tr>
						<tr>
							<th><label>Địa chỉ email:</label></th>
							<th><input type="email" class="form-control"
								placeholder="Email address" required autofocus></th>
						</tr>
						<tr>
							<th><label>Nhập lại email:</label></th>
							<th><input type="email" class="form-control"
								placeholder="Email address" required autofocus></th>
						</tr>
						<tr>
							<th><label>Mật khẩu:</label></th>
							<th><input type="password" class="form-control"
								placeholder="Password" required></th>
						</tr>
						<tr>
							<th><label>Nhập lại mật khẩu:</label></th>
							<th><input type="password" class="form-control"
								placeholder="Password" required></th>
						</tr>
					</table>
				</div>

			</div>

		</div>

		<div class="panel panel-success">
			<div class="panel-heading">Thông tin bổ sung</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-3">Ngày sinh:</div>
					<div class="col-md-3">
						<input type="date" class="form-control" placeholder="Ngày"
							required>
					</div>
					<div class="col-md-3">
						<input type="month" class="form-control" placeholder="Tháng"
							required>
					</div>
					<div class="col-md-3">
						<input type="date" class="form-control" placeholder="Năm" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">Giới tính:</div>
					<div class="col-md-6">
						<div>
							<input type="checkbox"> Nữ
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="panel panel-success">
			<div class="panel-heading">Quy định</div>
			<div class="panel-body">
				<h4>Quy định thành viên</h4>
				<p class="navbar-text">Đăng ký tham gia diễn đàn hoàn toàn miễn
					phí! Rất mong các bạn tuân theo các luật lệ và qui định của diễn
					đàn. Nếu bạn đồng ý với các điều khoản trên, vui lòng đánh dấu vào
					hộp kiểm 'Tôi đồng ý' và nhấn nút 'Hoàn tất đăng ký' bên dưới. Nếu
					bạn muốn hủy bỏ việc đăng ký, hãy lích vào đây để trở về diễn đàn.</p>
			</div>
			<div class="panel-body">
				<div class="checkbox">
					<label><input type="checkbox"> Tôi đồng ý quy đinh
						thành viên</label>
				</div>
			</div>
		</div>

		<button type="submit" class="btn btn-default">Hoàn tất đăng
			ký</button>
		<button type="submit" class="btn btn-default">Nhập lại từ đầu</button>
	</div>

	<script type="text/javascript"
		src="../Bootstrap/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>

</body>
</html>