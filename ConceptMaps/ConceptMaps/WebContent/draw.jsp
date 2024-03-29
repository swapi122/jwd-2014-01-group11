<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- Start Gojs -->
<script src="resoures/gojs/js/go-debug.js"></script>
<script src="resoures/gojs/js/initjson.js"></script>
<!-- End Gojs -->


<title>Insert title here</title>
</head>
<body onload="init()">
	<div id="wrapper">
		<!-- Fixed navbar -->
		<%@ include file="navbarmasterpage.jsp" %>
		<!-- end narbar side -->
			
		<div id="page-wrapper" >
			<div id="page-inner">
				<dir class="row" >
					<!-- properties  -->
					<div class="col-md-4 col-md-push-8">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">Infomation</h3>
							</div>
							<div class="panel-body">
							
								<p name="mess" id="mess" style="color: red"></p>
								<!-- Infomation  -->
								<form role="form">
									<div class="form-group">
										<label>Name: </label> <br> 
										<input type="text" class="form-control" placeholder="Conceptmaps name"
											name="nameConcept" id="nameConcept" />
									</div>
									<div class="form-group">
										<label>Date create: </label> <br> 
										<input type="text" class="form-control" placeholder="dd/mm/yyyy"
											name="datecreate" id="datecreate" />
									</div>
									<div class="form-group">
										<label>Description: </label> <br>
										<textarea rows="3" cols="50" class="form-control"
											name="description" id="description" placeholder="Description"
											required autofocus></textarea>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- end properties  -->
					
					<div class="col-md-8 col-md-pull-4">
					
					<!-- Control  -->
					<form action="" method="post" id="drawform">
						<div class="row">
							<div class="well well-sm">
							
								<%-- <div class="form-group">
                                            <label>Select Concept Maps</label>
                                            <select class="form-control" name="selectConcept" id="selectConcept">
                                             	<c:forEach var="concept" items="${listconcept}">
                                               	 <option value="${ concept.id}">${concept.name }</option>
                                                </c:forEach>
                                            </select>
                                 </div> --%>
							
								<button type="button" class="btn btn-primary" id="SaveButton" onclick="save()">
									<span class="fa fa-save fa-2x"></span><br> Save
								</button>
								<button type="button" class="btn btn-primary" onclick="load()">
									<span class="fa  fa-cloud-upload fa-2x"></span><br> Load
								</button>
								<button type="button" class="btn btn-primary" onclick="undo()" value="Undo">
									<span class="fa fa-reply fa-2x"></span><br> Undo
								</button>
								<button type="button" class="btn btn-primary" onclick="redo()" value="Redo">
									<span class="fa fa-share fa-2x"></span><br> Redo
								</button>
								<button type="button" class="btn btn-primary">
									<span class="fa fa-trash fa-2x"></span><br> Clear
								</button>
								
								<!-- <label>Name: </label> <br> 
										<input type="text" class="form-control" placeholder="Conceptmaps name"
											name="nameConcept" id="nameConcept" /> -->
							</div>
						</div>
						
								<!-- START GOJS -->
								
									<div id="sample">
										<div id="myDiagram" style="background-color: whitesmoke; border: solid 1px black; width: 100%; height: 400px"></div>
									</div>
								</form>
					<!-- END GOJS -->
					
						
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