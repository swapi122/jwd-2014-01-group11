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
<link rel="stylesheet" href="resoures/css/bootstrap-datetimepicker.min.css">

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
	                    <a class="active-menu"  href="#"><i class="fa fa-user fa-3x"></i> Account</a>
	                </li>
	                <li>
	                    <a  ><i class="fa fa-envelope-o fa-3x"></i> Message</a>
	                </li>
	                 <li class="dropdown" >
	                    <a href="#" class="dropdown-toggle"	data-toggle="dropdown"><i class="fa fa-sitemap fa-3x"></i>Conceptmaps <span class="caret"></span></a>
	                    <ul class="nav" >
	                    	<li><a href="#"><i class="fa fa-list-alt"></i> Files</a></li>
	                    	<li><a href="#"><i class="fa fa-users"></i> Following</a></li>
	                    	<li><a><i class="fa fa-book"></i> Exercises</a></li>
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
					<!-- properties  -->
					<div class="col-md-4 col-md-push-8">
						<div class="panel panel-default">
							<div class="panel-body">
								<ul class="nav nav-tabs">
									<li class="active">
										<a data-toggle="tab" href="#info">Infomation</a>
									</li>
									<li class="">
										<a data-toggle="tab" href="#properties">Properties</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="info" class="tab-pane fade">
										<!-- Infomation  -->
										<form role="form">
											<div class="form-group">
												<label>Name: </label> <br>
												<input type="text" class="form-control" placeholder="Conceptmaps name"/>
											</div>
											<div class="form-group">
												<label>Date create: </label> <br>
												<input type="text" class="form-control" placeholder="dd/mm/yyyy"/>
											</div>
											<div class="form-group">
												<label>Description: </label> <br>
												<textarea rows="3" cols="50" class="form-control" placeholder="Description" required autofocus></textarea>
											</div>
										</form>
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
					
					<div class="col-md-8 col-md-pull-4">
					
					<!-- Control  -->
						<div class="row">
							<div class="well well-sm">
								<button type="button" class="btn btn-primary">
									<span class="fa fa-save fa-2x"></span><br> Save
								</button>
								<button type="button" class="btn btn-primary">
									<span class="fa fa-reply fa-2x"></span><br> Undo
								</button>
								<button type="button" class="btn btn-primary">
									<span class="fa fa-share fa-2x"></span><br> Redo
								</button>
								<button type="button" class="btn btn-primary">
									<span class="fa fa-trash fa-2x"></span><br> Clear
								</button>
							</div>
						</div>
					</div>
					
					<!-- Draw -->					
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