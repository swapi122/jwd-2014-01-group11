<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<link rel="stylesheet" href="resoures/css/bootstrap.css">
<link rel="stylesheet" href="resoures/css/bootstrap-theme.css">
<link rel="stylesheet" href="resoures/css/font-awesome.css">
<link rel="stylesheet" href="resoures/css/custom.css">

<link rel="stylesheet" href="resoures/css/gsdk-base.css">
<link rel="stylesheet" href="resoures/css/bootstrap-datetimepicker.min.css">

           
     <!--      Wizard container        -->   
     <!-- <div class="wizard-container">  -->
         <form action="" method="">
         <div class="card wizard-card ct-wizard-orange" id="wizard">
         
         <!--        You can switch "ct-wizard-orange"  with one of the next bright colors: "ct-wizard-blue", "ct-wizard-green", "ct-wizard-orange", "ct-wizard-red"             -->
         
             	<div class="wizard-header">
                 	<h3>
                 	   Create Assignment <br>
                 	</h3>
             	</div>
             	<ul>
                     <li><a href="#chooseconceptmaps" data-toggle="tab">Choose conceptmaps</a></li>
                     <li><a href="#option" data-toggle="tab">Option</a></li>
                     <li><a href="#addmember" data-toggle="tab">Add member</a></li>
                 </ul>
                 <div class="tab-content">
                     <div class="tab-pane" id="chooseconceptmaps">
                       <div class="row">
                           <h4 class="info-text"> Choose concept maps to create asignment</h4>
                           <div class="col-sm-8 col-sm-offset-2">
                              <div class="form-group">
                                 <label for="conceptmaps">List conceptmaps</label>
                                 <select class="form-control" id="conceptmaps">
                                 	<option>Concept1</option>
                                 	<option>Concept2</option>
                                 </select>
                               </div>
                           </div>
                       </div>
                     </div>
                     <div class="tab-pane" id="option">
                         <h4 class="info-text"> Option </h4>
                         <div class="row">
                             <div class="col-sm-10 col-sm-offset-1">
                                 <div class="col-sm-4">
                                 	<div class="form-group">
	                                     <label>Name</label>
	                                     <p>Name</p>
	                                     <label>Date create</label>
	                                     <p>Date</p>
                                 	</div>
                                     
                                 </div>
                                 <div class="col-sm-4">
                                 	<div class="form-group">
	                                    <label>Description</label>
		                                <textarea class="form-control" rows="3"></textarea>
		                                <label>Data</label>
		                                <textarea class="form-control" rows="3"></textarea>
                                 	</div>
                                     
                                 </div>
                                 <div class="col-sm-4">
                                     <div class="form-group">
	                                     <label>start time</label>
	                                     <input type="text" class="form-control" placeholder="dd/mm/yyy hh:mm">
	                                     <label>deadline</label>
	                                     <input type="text" class="form-control" placeholder="dd/mm/yyy hh:mm">
                                   </div>
                                     
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="tab-pane" id="addmember">
                     	<h4 class="info-text"> Add member Assignment </h4>
                         <div class="row">
	                         <div class="col-md-10 col-md-offset-1">
	                             <label>Member</label>
			                     <textarea class="form-control" rows="3"></textarea>
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
         </form>
	<!-- wizard container -->

    <script type="text/javascript" src="resoures/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resoures/js/bootstrap.min.js"></script>
		
	<!--   plugins 	 -->
	<script type="text/javascript" src="resoures/js/jquery.bootstrap.wizard.js"></script>
	<script src="resoures/js/wizard.js"></script>
	