<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <link href="/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet" />
  <link href="/resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
  <link href="/resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
  <link href="/resources/css/util.css" rel="stylesheet" />
  <link href="/resources/css/photo.css" rel="stylesheet" />
  <link href="/resources/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" />
  <link href="/resources/plugins/jcrop/css/jquery.Jcrop.css" rel="stylesheet" />
  <!-- =================== ETC ======================================= -->
</head>
<body>
	<div class="row">
		<div class="col-md-12" data-spy="scroll" data-target="util-menu">
			<!-- begin panel -->
			<div class="panel panel-inverse" data-height="100%"
				data-sortable-id="ui-widget-1">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						<a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a> 
					</div>
					<h4 class="panel-title">사진 등록 및 크기 조절</h4>
				</div>
				<div class="panel-body p-b-0">
					<!-- BEGIN ROW -->	
					<div class="row ">	
						<!-- BEGIN COL-STEP -->												
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="pay-head">
								<form id="uploadForm" name="uploadForm" method="post" enctype="multipart/form-data" action="/photo/tempSave" target="procFrame" onsubmit="return false;">
									<h4>
										<i class="fa fa-chevron-right"></i> 
										사진파일선택  							
										<span class="m-l-30 btn btn-warning fileinput-button">
		                                    <i class="fa fa-photo text-white"></i>
		                                    <span>사진 업로드</span>
		                                    <input type="file" id="uploadFile" name="uploadFile" onchange="fn_temp_upload(this.form);" />
	                                	</span>	                                	
                                	</h4>	
                               	</form>								
							</div>												
						</div>
						<!-- END COL-STEP -->
						
						<!-- BEGIN COL-STEP -->												
						<div class="col-xs-12 col-sm-12 col-md-12">							
							<div class="pay-contents p-30">
								
										<img src="/resources/img/default_profile.png" id="original-img"/>
									
									
									
										<div id="preview-pane">
										    <div class="preview-container">
										      <img src="/resources/img/default_profile.png" class="jcrop-preview" alt="Preview" />
										    </div>
										</div>
										
										<form id="coords" class="coords" method="POST" action="/photo/cropper">								
										     <input type="hidden" name="imageName" value="ff.jpg" />
										     <input type="hidden" name="x" id="x"/>
										     <input type="hidden" name="y" id="y"/>										  
										     <input type="hidden" name="w" id="w"/>
										     <input type="hidden" name="h" id="h"/>
										     <input type="submit" value="Crop" name="action" />
								 		</form>	
								
									
									
								</div>
										
								
							</div>
						</div>
						<!-- END COL-STEP -->
						
						<!-- BEGIN COL-STEP -->	
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="pay-head">
								<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 사진크기조정 </h4>
							</div>
							<div class="pay-contents p-30">	
								<table class="table">
									<tr>
										<td colspan="3"> 
										<label class="radio-inline"><input type="radio" name="optionsRadios" value="option1" checked /> 사이즈 직접 조정</label>
										<label class="radio-inline">가로 : <input type="text" size="4" maxlength="4"> 픽셀&nbsp; X &nbsp;세로 : <input type="text" size="4" maxlength="4"> 픽셀</label></td>																		
									</tr>
									<tr>
										<td><label class="radio-inline"><input type="radio" name="optionsRadios" value="option1" /> 워크넷 (150 ×200 픽셀)</label></td>
										<td><label class="radio-inline"><input type="radio" name="optionsRadios" value="option1" /> 사람인 (150 ×200 픽셀)</label></td>
										<td><label class="radio-inline"><input type="radio" name="optionsRadios" value="option1" /> 잡코리아 (103 ×132 픽셀)</label></td>									
									</tr>
									<tr>
										<td><label class="radio-inline"><input type="radio" name="optionsRadios" value="option1" /> 커리어 (95 ×120 픽셀)</label></td>
										<td><label class="radio-inline"><input type="radio" name="optionsRadios" value="option1" /> 스카우트 (95 ×126 픽셀)</label></td>
										<td><label class="radio-inline"><input type="radio" name="optionsRadios" value="option1" /> 인크루트 (85 ×113 픽셀)</label></td>									
									</tr>
								</table>
							</div>
						</div>
						<!-- END COL-STEP -->
						<!-- BEGIN COL-STEP -->	
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="pay-head">
								<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 사진적용 </h4>
							</div>
							<div class="pay-contents">
								
								
								
							</div>
						</div>
						<!-- END COL-STEP -->	
						<!-- BEGIN COL-STEP -->	
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="pay-head">
								<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 사진저장 </h4>
							</div>
							<div class="pay-contents">
								
								
								
							</div>
						</div>	
						<!-- END COL-STEP -->						
					</div>				
					<!--  END ROW -->
				</div>
			</div>
			<!-- end panel -->			
		</div>
	</div>
			


<!-- ================== BEGIN PAGE LEVEL JS ================== -->
<div id="siteMeshJavaScript">

  <script src="/resources/plugins/masked-input/masked-input.min.js"></script>
  <script src="/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
  <script src="/resources/plugins/switchery/switchery.min.js"></script>
  <script src="/resources/js/form-slider-switcher.demo.min.js"></script>
  <script src="/resources/plugins/jcrop/js/jquery.Jcrop.js"></script>
  
	
  <script>
    //example

   
    $(document).ready(function() {
      App.init();
     
      document.getElementById("m_util").className = "active";

     
      
    });    
    



  </script>

</div>
<!-- ================== END PAGE LEVEL JS ================== -->



</body>

</html>