<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="resoures/css/bootstrap.css">
<link rel="stylesheet" href="resoures/css/bootstrap-theme.css">
<link rel="stylesheet" href="resoures/css/font-awesome.css">
<link rel="stylesheet" href="resoures/css/custom.css">
<!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> -->

<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand" href="#">Concept Maps</a> 
	            </div>
				<div >
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Message<span class="badge">3</span></a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Logout</a></li>
					</ul>
					<form class="navbar-form navbar-right">
						<input type="text" class="form-control" placeholder="Search...">
					</form>
				</div>
		</nav>
		<!-- end navbar  -->
		
		<!-- narbar side  -->
		<nav class="navbar-default navbar-side" role="navigation" >
	          <div class="sidebar-collapse">
	              <ul class="nav" id="main-menu">
					<li class="text-center">
		                  <img src="data/img/find_user.png" class="user-image img-responsive"/>
					</li>
	                <li>
	                    <a class="active-menu"  href="#"><i class="glyphicon glyphicon-user btn-lg"></i> Account</a>
	                </li>
	                <li>
	                    <a  ><i class="glyphicon glyphicon-envelope btn-lg"></i> Message</a>
	                </li>
	                 <li class="dropdown" >
	                    <a href="#" class="dropdown-toggle"	data-toggle="dropdown"><i class="fa fa-sitemap fa-3x"></i>Conceptmaps <span class="caret"></span></a>
	                    <ul class="nav" >
	                    	<li><a href="#"><i class="fa fa-list-alt"></i> Files</a></li>
	                    	<li><a href="#"><i class="fa fa-users"></i> Following</a></li>
	                    </ul>
	                </li>
	                <li>
	                      <a  ><i class="fa fa-qrcode fa-3x"></i> Assignment</a>
	                  </li>
	              </ul>
	          </div>
		</nav>
		<!-- end narbar side -->
			
		<div id="page-wrapper" >
			<div id="page-inner">
				<dir class="row">
					<div class="col-md-8">
						<div class="row"><h1>control</h1></div>
					</div>
					
					<!-- properties  -->
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-body">
								<ul class="nav nav-tabs">
									<li class="active">
										<a data-toggle="tab" href="#solution">Solution</a>
									</li>
									<li class="">
										<a data-toggle="tab" href="#properties">Properties</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="solution" class="tab-pane fade">
										<h4>Solution</h4>
									</div>
									<div id="properties" class="tab-pane fade">
										<h4>Properties</h4>
										<form role="form">
											<div class="form-group">
												<label>Text: </label> <br>
												<input type="text" class="form-control"/>
											</div>
											<div class="form-group">
												<label>Color: </label> <br>
												<input type="" class="form-control"/>
											</div>
											<div class="form-group">
												<label>Height: </label> <br>
												<input type="text" class="form-control"/>
											</div>
											<div class="form-group">
												<label>Width: </label> <br>
												<input type="text" class="form-control"/>
											</div>
											<div class="form-group">
												<label>x: </label> <br>
												<input type="text" class="form-control"/>
											</div>
											<div class="form-group">
												<label>y: </label> <br>
												<input type="text" class="form-control"/>
											</div>
											<div class="form-group">
												<label>Data: </label> <br>
												<input type="text" class="form-control"/>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end properties  -->
					
				</dir>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resoures/js/jquery.metisMenu.js"></script>
	<script type="text/javascript" src="resoures/js/custom.js"></script>
	<script type="text/javascript" src="resoures/morris/raphael-2.1.0.min.js"></script>
	<script type="text/javascript" src="resoures/morris/morris.js"></script>
</body>
</html>