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
<link rel="stylesheet" href="resoures/css/rotating-card.css">
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
	                    	<li><a><i class="fa fa-list-alt"></i> Files</a></li>
	                    	<li><a><i class="fa fa-users"></i> Following</a></li>
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
				<div class="row">
        			<div class="col-md-12">
			            <div class="col-sm-4 col-sm-6">
			                <div class="card-container">
                				<div class="card">
				                    <div class="front">
				                    	<div class="cover">
				                        	<img  src="data/img/rotating_card_thumb.jpg"/>
				                    	</div>
				                        <div class="content">
				                            <div class="main">
				                                <h3 class="name">Computer</h3>
				                                <p class="profession">Date: 20/10/2014</p>
				                                <h5><i class="text-muted"></i>Modifiers: public</h5>
				                            </div>
				                            
				                        </div>
				                    </div> <!-- end front panel -->
				                    <div class="back">
				                        <div class="header">
				                            <h5 class="motto">Properties</h5>
				                        </div> 
				                        <div class="content">
				                            <div class="main">
				                                <h4 class="text-center">Conceptmaps name</h4>
				                                <label>Mô tả:</label>
				                                <textarea class="form-control" rows="3"></textarea>
				                                <label>Tài liệu</label>
				                                <textarea class="form-control" rows="3"></textarea>
				                            </div>
				                        </div>
				                        <div class="footer">
				                            <div class="social-links text-center">
				                            	<a href="#"><i class="fa fa-eye fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-pencil-square-o fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-share-alt fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-trash-o fa-lg"></i></a>
				                            </div>
				                        </div>
				                    </div> <!-- end back panel -->
				                </div> <!-- end card -->
				            </div> <!-- end card-container -->  
			            </div>
			             <div class="col-sm-4 col-sm-6">
			                <div class="card-container">
                				<div class="card">
				                    <div class="front">
				                    	<div class="cover">
				                        	<img src="data/img/rotating_card_thumb.jpg"/>
				                    	</div>
				                        <div class="content">
				                            <div class="main">
				                                <h3 class="name">Computer</h3>
				                                <p class="profession">Date: 20/10/2014</p>
				                                <h5><i class="text-muted"></i>Modifiers: public</h5>
				                            </div>
				                            
				                        </div>
				                    </div> <!-- end front panel -->
				                    <div class="back">
				                        <div class="header">
				                            <h5 class="motto">Properties</h5>
				                        </div> 
				                        <div class="content">
				                            <div class="main">
				                                <h4 class="text-center">Conceptmaps name</h4>
				                                <label>Mô tả:</label>
				                                <textarea class="form-control" rows="3"></textarea>
				                                <label>Tài liệu</label>
				                                <textarea class="form-control" rows="3"></textarea>
				                            </div>
				                        </div>
				                        <div class="footer">
				                            <div class="social-links text-center">
				                                <a href="#"><i class="fa fa-eye fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-pencil-square-o fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-share-alt fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-trash-o fa-lg"></i></a>
				                            </div>
				                        </div>
				                    </div> <!-- end back panel -->
				                </div> <!-- end card -->
				            </div> <!-- end card-container -->  
			            </div>
			             <div class="col-sm-4 col-sm-6">
			                <div class="card-container">
                				<div class="card">
				                    <div class="front">
				                    	<div class="cover">
				                        	<img src="data/img/rotating_card_thumb.jpg"/>
				                    	</div>
				                        <div class="content">
				                            <div class="main">
				                                <h3 class="name">Computer</h3>
				                                <p class="profession">Date: 20/10/2014</p>
				                                <h5><i class="text-muted"></i>Modifiers: public</h5>
				                            </div>
				                            
				                        </div>
				                    </div> <!-- end front panel -->
				                    <div class="back">
				                        <div class="header">
				                            <h5 class="motto">Properties</h5>
				                        </div> 
				                        <div class="content">
				                            <div class="main">
				                                <h4 class="text-center">Conceptmaps name</h4>
				                                <label>Mô tả:</label>
				                                <textarea class="form-control" rows="3"></textarea>
				                                <label>Tài liệu</label>
				                                <textarea class="form-control" rows="3"></textarea>
				                            </div>
				                        </div>
				                        <div class="footer">
				                            <div class="social-links text-center">
				                                <a href="#"><i class="fa fa-eye fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-pencil-square-o fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-share-alt fa-lg"></i></a>
				                                <a href="#"><i class="fa fa-trash-o fa-lg"></i></a>
				                            </div>
				                        </div>
				                    </div> <!-- end back panel -->
				                </div> <!-- end card -->
				            </div> <!-- end card-container -->    
			            </div>
        			</div>
    			</div>
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