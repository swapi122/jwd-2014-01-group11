<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<link rel="stylesheet" href="resoures/css/bootstrap.css">
<link rel="stylesheet" href="resoures/css/bootstrap-theme.css">
<link rel="stylesheet" href="resoures/css/font-awesome.css">
<link rel="stylesheet" href="resoures/css/custom.css">

<link rel="stylesheet" href="resoures/css/gsdk-base.css">
<link rel="stylesheet" href="resoures/css/bootstrap-datetimepicker.min.css">

<title>Create Assignment</title>
</head>
<body>
	<div id="wrapper">
		<!-- Fixed navbar -->
		<%@ include file="navbarmasterpage.jsp" %>
		<!-- end narbar side -->
			
		<div id="page-wrapper" >
			<div id="page-inner">
			<div class="image-container set-full-height">
			
				<div class="row">
					<div class="col-md-12" >
						<!--      Wizard container        --> 
						<div class="wizard-container">
		                <form action="" method="">
			                <div id="wizard" class="card wizard-card ct-wizard-orange">
			                
			                <!--        You can switch "ct-wizard-orange"  with one of the next bright colors: "ct-wizard-blue", "ct-wizard-green", "ct-wizard-orange", "ct-wizard-red"             -->
			                
			                    	<div class="wizard-header">
			                        	<h3>
			                        	   Add Assignment
			                        	</h3>
			                    	</div>
			                    	<ul class="nav nav-pills">
			                            <li class="active" style="width: 33.3333%;">
			                            	<a href="#info" data-toggle="tab">Infomation</a>
			                            </li>
			                            <li class="" style="width: 33.3333%;">
			                            	<a href="#member" data-toggle="tab">Member</a>
			                            </li>
			                            <li class="" style="width: 33.3333%;">
			                            	<a href="#add" data-toggle="tab">Add Member</a>
			                            </li>
			                        </ul>
			                        <div class="tab-content">
			                            <div class="tab-pane active" id="info">
			                              <div class="row">
			                                  <h4 class="info-text"> Let's start with the basic information</h4>
			                                  
			                                  <div class="col-sm-10 col-sm-offset-1">
			                                      <div class="form-group">
			                                          <label>Email</label>
			                                          <input type="email" class="form-control" placeholder="andrew@creative-tim.com">
			                                      </div>
			                                  </div>
			                              </div>
			                            </div>
			                            <div class="tab-pane" id="member">
			                                <h4 class="info-text"> What are you doing? </h4>
			                                <div class="row">
			                                    <div class="col-sm-10 col-sm-offset-1">
			                                        <div class="col-sm-4">
			                                            <div class="choice" data-toggle="wizard-radio">
			                                                <input type="radio" name="job" value="Design">
			                                                <div class="icon">
			                                                    <i class="fa fa-pencil"></i>
			                                                </div>
			                                                <h6>Design</h6>
			                                            </div>
			                                        </div>
			                                        <div class="col-sm-4">
			                                            <div class="choice" data-toggle="wizard-radio">
			                                                <input type="radio" name="job" value="Code">
			                                                <div class="icon">
			                                                    <i class="fa fa-terminal"></i>
			                                                </div>
			                                                <h6>Code</h6>
			                                            </div>
			                                            
			                                        </div>
			                                        <div class="col-sm-4">
			                                            <div class="choice"  data-toggle="wizard-radio">
			                                                <input type="radio" name="job" value="Develop">
			                                                <div class="icon">
			                                                    <i class="fa fa-laptop"></i>
			                                                </div>
			                                                <h6>Develop</h6>
			                                            </div>
			                                            
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="tab-pane" id="add">
			                                <div class="row">
			                                    <div class="col-sm-12">
			                                        <h4 class="info-text"> Are you living in a nice area? </h4>
			                                    </div>
			                                    <div class="col-sm-7 col-sm-offset-1">
			                                         <div class="form-group">
			                                            <labe>Street Name</label>
			                                            <input type="text" class="form-control" placeholder="5h Avenue">
			                                          </div>
			                                    </div>
			                                    <div class="col-sm-3">
			                                         <div class="form-group">
			                                            <label>Street Number</label>
			                                            <input type="text" class="form-control" placeholder="242">
			                                          </div>
			                                    </div>
			                                    <div class="col-sm-5 col-sm-offset-1">
			                                         <div class="form-group">
			                                            <label>City</label>
			                                            <input type="text" class="form-control" placeholder="New York...">
			                                          </div>
			                                    </div>
			                                    <div class="col-sm-5">
			                                         <div class="form-group">
			                                            <label>Country</label><br>
			                                             <select name="country" class="form-control">
			                                                <option value="Afghanistan"> Afghanistan </option>
			                                                <option value="Albania"> Albania </option>
			                                                <option value="Algeria"> Algeria </option>
			                                                <option value="American Samoa"> American Samoa </option>
			                                                <option value="Andorra"> Andorra </option>
			                                                <option value="Angola"> Angola </option>
			                                                <option value="Anguilla"> Anguilla </option>
			                                                <option value="Antarctica"> Antarctica </option>
			                                                <option value="...">...</option>
			                                            </select>
			                                          </div>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="wizard-footer">
			                            	<div class="pull-right">
			                                    <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm' name='next' value='Next' />
			                                    <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm' name='finish' value='Finish' />
			        
			                                </div>
			                                <div class="pull-left">
			                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm' name='previous' value='Previous' />
			                                </div>
			                                <div class="clearfix"></div>
			                        </div>	
			                </div>
		                </form> <!-- wizard container -->
		                </div>
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
	
	<script type="text/javascript" src="resoures/js/jquery.bootstrap.wizard.js"></script>
	<script src="resoures/js/wizard.js"></script>
	
	<script type="text/javascript"src="resoures/js/bootstrap-datepicker.js"></script>
</body>
</html>