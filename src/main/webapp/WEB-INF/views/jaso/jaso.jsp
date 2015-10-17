<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>


	<link href="/resources/css/m_style.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet" />
	<link href="/resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
	<!-- =================== ETC ======================================= -->
</head>
<body>
	<div class="vertical-box">
		<!--  left menu -->
		<div class="vertical-box-column width-250 border-right">
			<div class="vertical-box">
				<div class="wrapper">
					<div class="btn-group width-full">
	                    <a href="javascript:;" class="btn btn-warning btn-block dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list pull-right"></i> 새로만들기</a>
	                    <ul class="dropdown-menu">
							<li><a href="javascript:;"><i class="fa fa-file-text-o m-r-10"></i>자소서</a></li>						
							<li class="divider"></li>
							<li><a href="javascript:;"><i class="fa fa-folder-o m-r-10"></i>그룹</a></li>
						</ul>							
					</div>
					<div class="hr"></div>
				</div>
				<div class="vertical-box-row">
					<div class="vertical-box-cell">
						<div class="vertical-box-inner-cell">
							<div data-scrollbar="true" data-height="100%" class="wrapper">	
								<!-- group start -->	                            
						        <div class="panel-group" id="accordion">
						        	<!-- panel start -->	
									<div class="panel panel-jaso overflow-hidden">
										<div class="panel-heading">
											<h3 class="panel-title">													
												<a class="accordion-toggle accordion-toggle-styled" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
												    <i class="fa fa-plus-circle pull-right"></i>기본그룹
												</a>
											</h3>
										</div>
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
											<!-- files in group -->
												<a href="#" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-file-text m-r-10"></i><span class="badge badge-success">3/5</span>기본 자기소개서</a> 
												<a href="#" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-file-text m-r-10"></i>한전 1차 공채 - 자소서</a> 
											
											</div>
										</div>
									</div>										
									<!-- pannel end -->										
								</div>
									
								<!-- group end -->
								<a href="#" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-star m-r-10"></i><span class="badge badge-success">20.95%</span>중요 항목</a> 
								<a href="#" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-archive m-r-10"></i><span class="badge badge-success">20.95%</span>휴지통</a> 
								<div class="hr"></div>
								<a id="sajun-up" href="#" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-book m-r-10"></i>사전</a> 
								<a id="note-up" href="#" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-paperclip m-r-10"></i>노트(Todo,note)</a> 
								
							</div>
						</div>
					</div>
				 </div>
                <div class="wrapper">
                	<div class="hr"></div>
                 	 환경설정
                </div>	               
			</div>
		</div>
        <!--  left menu end -->	        
        
        <!--  hide menu (sajun) start-->
        <div id="sajun-div" class="vertical-box-column width-300 border-right">
            <div class="vertical-box">
                <div class="wrapper">
                	자료사전
                </div>
                <div class="wrapper">
            		<form>
			            <div class="input-group m-b-15">
                            <input type="text" class="form-control input-sm input-white" placeholder="Search Mail" />
                            <span class="input-group-btn">
                                <button class="btn btn-sm btn-inverse" type="button"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
		        	</form>
                </div>
                <div class="vertical-box-row">
                    <div class="vertical-box-cell">
                        <div class="vertical-box-inner-cell">
                            <div data-scrollbar="true" data-height="100%" class="wrapper">	
                            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
                            </div>
                        </div>
                   	</div>
                </div>	                           
                </div>
        </div>
        <!--  hide(sajun) menu end -->
	        
        <!--  hide menu (note) start-->
        <div id="note-div" class="vertical-box-column width-300 border-right">
            <div class="vertical-box">
                <div class="wrapper">
                	개인노트
                </div>
                <div class="wrapper">
            		<form>
			            <div class="input-group m-b-15">
                            <input type="text" class="form-control input-sm input-white" placeholder="Search Mail" />
                            <span class="input-group-btn">
                                <button class="btn btn-sm btn-inverse" type="button"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
		        	</form>
                </div>
                <div class="vertical-box-row">
                    <div class="vertical-box-cell">
                        <div class="vertical-box-inner-cell">
                            <div data-scrollbar="true" data-height="100%" class="wrapper">	


                            </div>
                        </div>
                   	</div>
                </div>	                           
			</div>
        </div>
        <!--  hide(note) menu end -->
	        
        <div class="vertical-box-column">
            <div class="vertical-box">
            	<div class="wrapper">
            		<div class="col-xs-6 m-r-0 p-r-0">
                    	<input type="text" name="jasoTitle" class="form-control">                
                    </div>
                    <div class="col-xs-1 m-l-0 p-l-0 text-left">
                    	<a href="javascript:;" class="btn btn-white"><i class="fa fa-star-o"></i></a>
                	</div>
                	 <div class="col-xs-3 m-l-0 p-l-0 text-left">            
                    	<a href="javascript:;" class="btn btn-inverse"><i class="fa fa-book"></i></a>
           				<a href="javascript:;" class="btn btn-inverse"><i class="fa fa-university"></i></a>
               			<a href="javascript:;" class="btn btn-inverse"><i class="fa fa-share-alt"></i></a>
                	</div>
                
              		<div class="col-xs-2 p-l-0 m-l-0 text-right">
              	
                    	<a href="javascript:;" class="btn btn-warning btn-block"><i class="fa fa-save"></i></a>
                    </div>
                    
                </div>
                <div class="vertical-box-row">
                    <div class="vertical-box-cell">
						<div class="vertical-box-inner-cell">
							<div data-scrollbar="true" data-height="100%" class="wrapper">
								<!-- begin col-6 -->
							    <div class="col-md-12">
									<div class="panel panel-inverse panel-with-tabs">
										<div class="panel-heading p-0">
				                           <div class="panel-heading-btn m-r-10 m-t-10">
				                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-expand"><i class="fa fa-expand"></i></a>
				                           </div>
				                           <div class="panel-heading-btn m-r-10 m-t-10">
				                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-expand"><i class="fa fa-plus"></i></a>
				                           </div>
				                           <!-- begin nav-tabs -->
				                           <div class="tab-overflow">
				                               <ul class="nav nav-tabs nav-tabs-inverse">
				                                   <li class="prev-button"><a href="javascript:;" data-click="prev-tab" class="text-success"><i class="fa fa-arrow-left"></i></a></li>
				                                   <li class="active"><a href="#nav-tab-1" data-toggle="tab">질문 1</a></li>
				                                   <li class=""><a href="#nav-tab-2" data-toggle="tab">질문 2</a></li>
				                                
				                                   <li class="next-button"><a href="javascript:;" data-click="next-tab" class="text-success"><i class="fa fa-arrow-right"></i></a></li>
				                               </ul>
				                           </div>
				                       </div>
										<div class="tab-content wr bg-silver-lighter m-l-0 m-r-0">
											<div class="tab-pane fade active in " id="nav-tab-1">
												<div class="table-responsive">
													<table id="resume-family-table" class="table table-condensed table-valign-middle text-center">															
														<tbody>																	
															<tr>
																<td>
																	<textarea name="qnaQuestion" id="answer" class="qna-textarea qna-title textarea form-control" rows="2" placeholder="질문을 입력하세요."></textarea>
																</td>																
															</tr>
															<tr>	
																<td>
																													
																	<textarea name="qnaAnswer" id="answer" class="qna-textarea wysihtml5 textarea form-control" rows="12"  placeholder="답변을 입력하세요."></textarea>
																	
																</td>																													
															</tr>
															<tr>	
																<td>																	
																	<div class="col-xs-3 m-0 p-0 text-left">
																		글자수 : <span id="charNum"></span> 
																	</div>
																	<div class="col-xs-3 m-0 p-0 text-left">
																		공백 미포함 : <span id="charNumNS"></span> 
																	</div>
																	<div class="col-xs-3 m-0 p-0  text-left"> 
																		바이트 수 : <span id="charNumByte"></span> 
			                                						</div>
			                                						<div class="col-xs-3 m-0 p-0 text-right"> 
																		<a href="javascript:;" class="btn btn-white"><i class="fa fa-heart-o"></i></a>
																		&nbsp;
																		<a href="javascript:;" class="btn btn-danger"><i class="fa fa-trash"></i></a>
			                                						</div>
																</td>																													
															</tr>
														</tbody>
													</table>													
												</div>											
											</div>
										<div class="tab-pane fade" id="nav-tab-2">
										   		
										   		
										   		
										   												
										</div>											
									</div>
								</div>
							</div>
			   					 <!-- end col-6 -->                                   
		    			</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>	        	        
</div>


         
	

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<div id="siteMeshJavaScript">		
		<script src="/resources/js/jaso.js"></script>
		<script src="/resources/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
		<script src="/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
		<script src="/resources/js/form-wysiwyg.demo.min.js"></script>
		<script src="/resources/plugins/switchery/switchery.min.js"></script>
		<script src="/resources/js/form-slider-switcher.demo.min.js"></script>
		<script src="/resources/plugins/se2/js/HuskyEZCreator.js"></script>
		
		<script>
		
			$(document).ready(function() {
				document.getElementById("m_jaso").className = "active";	
				App.init();
				
				$('.wysihtml5').wysihtml5({
					"font-styles": true, //Font styling, e.g. h1, h2, etc. Default true
					"emphasis": true, //Italics, bold, etc. Default true
					"lists": true, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
					"html": false, //Button which allows you to edit the generated HTML. Default false
					"link": false, //Button to insert a link. Default true
					"image": false, //Button to insert an image. Default true,
					"color": true //Button to change color of font  
				});
				
				FormSliderSwitcher.init();
				
				$("#sajun-div").hide();
				$("#note-div").hide();
				
				$("#sajun-up").click(function(){
					$("#sajun-div").fadeToggle("fast");
				});
				
			
				$("#note-up").click(function(){
					$("#note-div").fadeToggle("fast");
				});
				
				

						
				
			});
			
		
				
	
				
					
		</script>		
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
 	
</body>
</html>
