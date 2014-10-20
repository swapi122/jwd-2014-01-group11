<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" href="resoures/css/bootstrap.css">
<link rel="stylesheet" href="resouress/css/bootstrap-theme.css">
<link href="resoures/css/login-register.css" rel="stylesheet" />

<link href="resoures/assets/css/get-shit-done.css" rel="stylesheet" />
<link href="resoures/assets/css/demo.css" rel="stylesheet" />

<!--     Font Awesome     -->
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Grand+Hotel'	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

</head>

<body>
	<div id="navbar-full">
		<div id="navbar">
			<!--    
        navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange  
        -->
			<nav
				class="navbar navbar-ct-orange navbar-transparent navbar-fixed-top"
				role="navigation">

				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">ConceptMaps</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a  data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">Register</a></li>

							<li><a data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Sign
									in</a></li>
						</ul>

					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
			<div class="blurred-container">
				<div class="img-src"
					style="background-image: url('data/img/cover_4_blur.jpg')"></div>
			</div>
		</div>
		<!--  end navbar -->

	</div>
	<!-- end menu-dropdown -->

	<!--Login and register  -->
	<div class="modal fade login" id="loginModal">
		<div class="modal-dialog login animated">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Login with</h4>
				</div>
				<div class="modal-body">
					<div class="box">
						<div class="content">
							<div class="social">
								</a> <a id="google_login" class="circle google"
									href="/auth/google_oauth2"> <i
									class="fa fa-google-plus fa-fw"></i>
								</a> <a id="facebook_login" class="circle facebook"
									href="/auth/facebook"> <i class="fa fa-facebook fa-fw"></i>
								</a>
							</div>
							<div class="division">
								<div class="line l"></div>
								<span>or</span>
								<div class="line r"></div>
							</div>
							<div class="error"></div>
							<div class="form loginBox">
								<form method="post" action="/login" accept-charset="UTF-8">
									<input id="email" class="form-control" type="text"
										placeholder="Email" name="email"> 
									<input id="password"	class="form-control" type="password" placeholder="Password"
										name="password"> 
									<input	class="btn btn-default btn-login" type="button" value="Login"
										onclick="loginAjax()">
								</form>
							</div>
						</div>
					</div>
					<div class="box">
						<div class="content registerBox" style="display: none;">
							<div class="form">
								<form method="post" html="{:multipart=>true}" data-remote="true"
									action="/register" accept-charset="UTF-8">
									<input id="email" class="form-control" type="text"
										placeholder="Email" name="email"> 
									<input id="password"
										class="form-control" type="password" placeholder="Password"
										name="password"> 
									<input id="password_confirmation"
										class="form-control" type="password"
										placeholder="Repeat Password" name="password_confirmation">
									<input class="btn btn-default btn-register" type="submit"
										value="Create account" name="commit">
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="forgot login-footer">
						<span>Looking to <a href="javascript: showRegisterForm();">create
								an account</a> ?
						</span>
					</div>
					<div class="forgot register-footer" style="display: none">
						<span>Already have an account?</span> <a
							href="javascript: showLoginForm();">Login</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end login and register -->

	<div class="main">
		<div class="container tim-container"
			style="max-width: 800px; padding-top: 100px">
			<h1 class="text-center">
				ConceptMaps web <br> java web develop<small class="subtitle">university
					of technical education HCMMC.</small>
			</h1>
			<!--     end extras -->
		</div>
		<div class="space"></div>
		<!-- end container -->
	</div>
	<!-- end main -->

</body>

<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>
<script src="resoures/assets/js/jquery-ui-1.10.4.custom.min.js"
	type="text/javascript"></script>

<script src="resoures/assets/js/get-shit-done.js"></script>
<script src="resoures/js/login-register.js" type="text/javascript"></script>

</html>