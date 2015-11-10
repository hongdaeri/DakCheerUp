<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<link href="/resources/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="/resources/plugins/simple-line-icons/simple-line-icons.css" rel="stylesheet" />
	<!-- =================== ETC ======================================= -->
</head>
<body>
		<!-- begin page-header -->
		<h1 class="page-header m-t-10">커스터마이징 프린트 <small>이력서와 자기소개서를 프린트 또는 파일로 저장하세요.</small></h1>
		<!-- end page-header -->
		
		<!-- begin row -->
		<div class="row">
               <!-- begin col-12 -->
		    <div class="col-md-12">
		        <!-- begin panel -->
                   <div class="panel panel-inverse">
                       <div class="panel-heading">
                           <div class="panel-heading-btn">
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                           </div>
                           <h4 class="panel-title">프린트 마법사 </h4>
                       </div>
                       <div class="panel-body">
                           <form action="/" method="POST">
							<div id="wizard">
								<ol>
									<li>
									    이력서 및 자기소개서 작성
									    <small>닥취업의 이력서와 자기소개서 서비스를 이용하여 자신만의 이력서와 자기소개서를 만드세요.</small>
									</li>
									<li>
									    출력 대상 선택
									    <small>어떠한 대상을 출력할 것인지, 어떠한 항목을 추가하고 제외할 것인지 선택하세요.</small>
									</li>
									<li>
									    템플릿 양식 선택
									    <small>닥취업의 다양하고 멋진 템플릿 양식 중 마음에 드는 것을 고르세요.</small>
									</li>
									<li>
									    파일 저장 또는 출력
									    <small>프린터를 이용하여 출력할 것인지, 파일로 저장할 것인지 선택하세요.</small>
									</li>
								</ol>
								<!-- begin wizard step-1 -->
								<div>
                                       <fieldset>
                                           <legend class="pull-left width-full">STEP 1. 이력서 및 자기소개서 작성</legend>
                                           <!-- begin row -->
                                           <div class="row">
                                               <!-- begin col-6 -->
                                               <div class="col-md-6">
													<div class="m-t-10 p-20 jumbotron m-b-0 text-center">								    	
				                                        <h2><i class="icon-user"></i> 이력서</h2>
				                                        <p class="f-s-16">
				                                        	이력서는 취업의 성패를 좌우하는 홍바울님의 얼굴이자 홍보하는 광고문안입니다. 닥취업 이력서 서비스를 이용하여 휴지통으로 가지 않는 홍바울님 만의 이력서를 작성하세요. 작성하신 항목과 작성 값을 토대로 프린트 및 파일 저장을 할 수 있습니다.
				                                        </p>
				                                        <p class="f-s-16">
				                                        	홍바울님은 이력서에 현재 총 5가지 항목을 작성하여 주셨습니다. 
				                                        	<br>출력하기에 충분한가요? 보강이 필요하시다면 이력서 서비스에서 홍바울님을 더욱 돋보이게 할수있도록 이력서 항목을 보완하세요.
				                                        </p>
				                                        <p><a href="/resume" class="btn btn-success btn-lg" role="button"><i class="fa fa-user"></i>&nbsp;이력서 작성하러 가기</a></p>
			                                    	</div>
												</div>
                                               <!-- end col-6 -->
                                               <!-- begin col-6 -->
                                               <div class="col-md-6">
													<div class="m-t-10 p-20 jumbotron m-b-0 text-center">								    	
				                                        <h2><i class="icon-doc"></i> 자기소개서</h2>
				                                        <p class="f-s-16">
				                                        	취업을 시장이라고 했을때 자기소개서는 상품명세서 입니다. 구체적이고 참신하게, 그리고 객관적인 서술을 하는 것이 중요합니다. 닥취업 자기소개서 서비스를 이용하여 채용담당자의 눈을 사로잡는 이력서를 작성하세요. 작성하신 파일과 문항의 내용을 토대로 프린트 및 파일 저장을 할 수 있습니다.
				                                        </p>
				                                        <p class="f-s-16">
				                                        	홍바울님은 현재 총 4개의 자기소개서 파일과 14개의 문항을 작성하여 주셨습니다. 보강이 필요하시다면 자기소개서 서비스에서 홍바울님만의 돋보이는 자기소개서를 만들어보세요.
				                                        </p>
				                                        <p><a href="/jaso" class="btn btn-success btn-lg" role="button"><i class="fa fa-file-text-o"></i>&nbsp;자기소개서 작성하러 가기</a></p>
			                                    	</div>
												</div>
                                               <!-- end col-6 -->
                                           </div>
                                           <!-- end row -->
									</fieldset>
								</div>
								<!-- end wizard step-1 -->
								<!-- begin wizard step-2 -->
								<div>
									<fieldset>
										<legend class="pull-left width-full">STEP 2. 출력 대상 선택</legend>
                                            <!-- begin row -->
                                           <div class="row">
                                               <!-- begin col-12 -->
                                               <div class="col-md-12">
													
												</div>
                                               <!-- end col-12 -->
                                           </div>
                                           <!-- end row -->
									</fieldset>
								</div>
								<!-- end wizard step-2 -->
								<!-- begin wizard step-3 -->
								<div>
									<fieldset>
										<legend class="pull-left width-full">STEP 3. 템플릿 양식 선택</legend>                                         
                                           <!-- begin row -->
                                           <div class="row">
                                               <!-- begin col-12 -->
                                               <div class="col-md-12">
													
												</div>
                                               <!-- end col-12 -->
                                           </div>
                                           <!-- end row -->
                                       </fieldset>
								</div>
								<!-- end wizard step-3 -->
								<!-- begin wizard step-4 -->
								<div>
									<fieldset>
										<legend class="bg-white pull-left width-full">STEP 4. 파일 저장 또는 출력</legend>
										 <!-- begin row -->
                                           <div class="row">
                                               <!-- begin col-6 -->
                                               <div class="col-md-6">
													<div class="m-t-10 p-20 jumbotron m-b-0 text-center">								    	
				                                        <h2><i class="icon-printer"></i> 프린트로 출력</h2>
				                                        <p class="f-s-16">
				                                        	이력서는 취업의 성패를 좌우하는 홍바울님의 얼굴이자 홍보하는 광고문안입니다. 닥취업 이력서 서비스를 이용하여 휴지통으로 가지 않는 홍바울님 만의 이력서를 작성하세요. 작성하신 항목과 작성 값을 토대로 프린트 및 파일 저장을 할 수 있습니다.
				                                        </p>
				                                        <p class="f-s-16">
				                                        	홍바울님은 이력서에 현재 총 5가지 항목을 작성하여 주셨습니다. 
				                                        	<br>출력하기에 충분한가요? 보강이 필요하시다면 이력서 서비스에서 홍바울님을 더욱 돋보이게 할수있도록 이력서 항목을 보완하세요.
				                                        </p>
				                                        <p><a href="/resume" class="btn btn-success btn-lg" role="button"><i class="fa fa-user"></i>&nbsp;이력서 작성하러 가기</a></p>
			                                    	</div>
												</div>
                                               <!-- end col-6 -->
                                               <!-- begin col-6 -->
                                               <div class="col-md-6">
													<div class="m-t-10 p-20 jumbotron m-b-0 text-center">								    	
				                                        <h2><i class="icon-cloud-download"></i> 파일로 저장</h2>
				                                        <p class="f-s-16">
				                                        	취업을 시장이라고 했을때 자기소개서는 상품명세서 입니다. 구체적이고 참신하게, 그리고 객관적인 서술을 하는 것이 중요합니다. 닥취업 자기소개서 서비스를 이용하여 채용담당자의 눈을 사로잡는 이력서를 작성하세요. 작성하신 파일과 문항의 내용을 토대로 프린트 및 파일 저장을 할 수 있습니다.
				                                        </p>
				                                        <p class="f-s-16">
				                                        	홍바울님은 현재 총 4개의 자기소개서 파일과 14개의 문항을 작성하여 주셨습니다. 보강이 필요하시다면 자기소개서 서비스에서 홍바울님만의 돋보이는 자기소개서를 만들어보세요.
				                                        </p>
				                                        <p><a href="/jaso" class="btn btn-success btn-lg" role="button"><i class="fa fa-file-text-o"></i>&nbsp;자기소개서 작성하러 가기</a></p>
			                                    	</div>
												</div>
                                               <!-- end col-6 -->
                                           </div>
                                           <!-- end row -->
                                    </fieldset>
								</div>
								<!-- end wizard step-4 -->
							</div>
						</form>
                       </div>
                   </div>
                   <!-- end panel -->
               </div>
               <!-- end col-12 -->
           </div>
           <!-- end row -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<div id="siteMeshJavaScript">
		<script src="/resources/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<script src="/resources/js/calendar.demo.min.js"></script>
		<script src="/resources/plugins/bootstrap-wizard/js/bwizard.js"></script>
		<script src="/resources/js/form-wizards.demo.min.js"></script>
			
		<script>		
			$(document).ready(function() {
				App.init();
				Calendar.init();
				FormWizard.init();
				document.getElementById("m_print").className = "active";	
				
			});
				
			
		</script>		
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
 	
</body>
</html>

