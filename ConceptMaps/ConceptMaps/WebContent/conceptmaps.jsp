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

<title>Insert title here</title>
</head>
<body>

<!-- ===================================================================================== -->
	<!-- Start modal add share member -->
	<div class="modal fade" id="modal_addMember" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Share Member</h4>
				</div>
				<div class="modal-body">
					<!-- Do something  -->
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>STT</th>
								<th>Tên thành viên</th>
								<th>Email</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<tr class="success">
								<td>1</td>
								<td>Huỳnh Minh Trí</td>
								<td>hmtri92@gmail.com</td>
								<td>
									<button type="button" class="btn btn-primary btn-sm"
										data-toggle="modal" data-target="#modal_delete_sharemember">delete</button>
								</td>
							</tr>
							<tr class="success">
								<td>2</td>
								<td>Phan Thi Liên</td>
								<td>thilienphan@gmail.com</td>
								<td>
									<button type="button" class="btn btn-primary btn-sm"
										data-toggle="modal" data-target="#modal_delete_sharemember">delete</button>
								</td>
							</tr>
							<tr class="success">
								<td>3</td>
								<td>Phạm Quốc Dũng</td>
								<td>quocdungphampy@gmail.com</td>
								<td>
									<button type="button" class="btn btn-primary btn-sm"
										data-toggle="modal" data-target="#modal_delete_sharemember">delete</button>
								</td>
							</tr>
							<tr class="success">
								<td>4</td>
								<td>Lê Phúc Thịnh</td>
								<td>lpticy@gmail.com</td>
								<td>
									<button type="button" class="btn btn-primary btn-sm"
										data-toggle="modal" data-target="#modal_delete_sharemember">delete</button>
								</td>
							</tr>
						</tbody>
					</table>
					
					<textarea rows="3" cols="50" class="form-control" placeholder="Add email member" required autofocus></textarea>
					<button type="button" class="btn btn-primary">Add</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Start modal delete share member -->

	<div class="modal fade bs-example-modal-sm" id="modal_delete_sharemember"
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
	
	<!-- Start modal delete conceptmaps -->

	<div class="modal fade bs-example-modal-sm" id="modal_delete_conceptmaps"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Delete Conceptmaps</h4>
				</div>
				<div class="modal-body">
					<p>Delete conceptmaps
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">No</button>
					<button type="button" class="btn btn-primary">Yes</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- ================================		Body	 	=============================================  -->
	<div id="wrapper">
		<!-- Fixed navbar -->
		<%@ include file="navbarmasterpage.jsp" %>
		<!-- end narbar side -->
			
		<div id="page-wrapper" >
			<div id="page-inner">
				<div class="row">
        			<div class="col-md-12">
			            <div class="col-sm-3 col-sm-6">
			                <div class="card-container" >
                				<div class="card">
				                    <div class="front">
				                    	<div class="cover">
				                        	<img  src="data/img/rotating_card_thumb.jpg"/>
				                    	</div>
				                        <div class="content">
				                            <div class="main">
				                                <h3 class="name">Computer</h3>
				                                <p class="profession">Date: 20/10/2014</p>
				                                <h5><i class="text-muted"></i>Owner: Minh Tri</h5>
				                                <h5><i class="text-muted"></i>Modifiers: Public</h5>
				                            </div>
				                            
				                        </div>
				                    </div> <!-- end front panel -->
				                    <div class="back">
				                        <div class="content">
				                            <div class="main">
				                                <h4 class="text-center">Conceptmaps name</h4>
				                                <label>Mô tả:</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                                <label>Tài liệu</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                            </div>
				                        </div>
				                        <div class="footer">
				                            <div class="social-links text-center">
				                                <a href="draw.jsp" data-toggle="tooltip" data-placement="left" title="Edit">
				                                	<i class="fa fa-pencil-square-o fa-lg"></i>
				                                </a>
				                                <a href="#modal_addMember" data-toggle="modal" data-target="#modal_addMember" title="share">
				                                	<i class="fa fa-share-alt fa-lg"></i>
				                                </a>
				                                <a href="#modal_delete_conceptmaps" data-toggle="modal" data-target="#modal_delete_conceptmaps" title="delete">
				                                	<i class="fa fa-trash-o fa-lg"></i>
				                                </a>
				                            </div>
				                        </div>
				                        
				                    </div> <!-- end back panel -->
				                </div> <!-- end card -->
				            </div> <!-- end card-container -->  
			            </div>
			             <div class="col-sm-3 col-sm-6">
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
				                        <div class="content">
				                            <div class="main">
				                                <h4 class="text-center">Conceptmaps name</h4>
				                                <label>Mô tả:</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                                <label>Tài liệu</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                            </div>
				                        </div>
				                        <div class="footer">
				                            <div class="social-links text-center">
				                                <a href="#"><i class="fa fa-pencil-square-o fa-lg"></i></a>
				                                <a href="#modal_addMember" data-toggle="modal" data-target="#modal_addMember"><i class="fa fa-share-alt fa-lg"></i></a>
				                                <a href="#modal_delete_conceptmaps" data-toggle="modal" data-target="#modal_delete_conceptmaps"><i class="fa fa-trash-o fa-lg"></i></a>
				                            </div>
				                        </div>
				                    </div> <!-- end back panel -->
				                </div> <!-- end card -->
				            </div> <!-- end card-container -->  
			            </div>
			             <div class="col-sm-3 col-sm-6">
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
				                        <div class="content">
				                            <div class="main">
				                                <h4 class="text-center">Conceptmaps name</h4>
				                                <label>Mô tả:</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                                <label>Tài liệu</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                            </div>
				                        </div>
				                        <div class="footer">
				                            <div class="social-links text-center">
				                                <a href="#"><i class="fa fa-pencil-square-o fa-lg"></i></a>
				                                <a href="#modal_addMember" data-toggle="modal" data-target="#modal_addMember"><i class="fa fa-share-alt fa-lg"></i></a>
				                                <a href="#modal_delete_conceptmaps" data-toggle="modal" data-target="#modal_delete_conceptmaps"><i class="fa fa-trash-o fa-lg"></i></a>
				                            </div>
				                        </div>
				                    </div> <!-- end back panel -->
				                </div> <!-- end card -->
				            </div> <!-- end card-container -->    
			            </div>
			            <div class="col-sm-3 col-sm-6">
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
				                        <div class="content">
				                            <div class="main">
				                                <h4 class="text-center">Conceptmaps name</h4>
				                                <label>Mô tả:</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                                <label>Tài liệu</label>
				                                <textarea class="form-control" rows="3" readonly></textarea>
				                            </div>
				                        </div>
				                        <div class="footer">
				                            <div class="social-links text-center">
				                                <a href="#"><i class="fa fa-pencil-square-o fa-lg"></i></a>
				                                <a href="#modal_addMember" data-toggle="modal" data-target="#modal_addMember"><i class="fa fa-share-alt fa-lg"></i></a>
				                                <a href="#modal_delete_conceptmaps" data-toggle="modal" data-target="#modal_delete_conceptmaps"><i class="fa fa-trash-o fa-lg"></i></a>
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