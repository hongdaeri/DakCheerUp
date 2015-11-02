<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<link href="/resources/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
	<!-- =================== ETC ======================================= -->
</head>
<body>
	 <div class="col-md-12">
		<!-- begin error -->
		
		<div class="text-center"><h1><br><br>죄송합니다. 준비중입니다.</h1></div>
			<div class="text-center">
			    <h3>빠른시일 내에 해당 서비스를 제공하겠습니다.</h3>
			</div>		    
		<!-- end error -->			
		</div> 
		<div class="text-right error-code"><br><br><br> <i class="fa fa-warning m-r-100"></i>&nbsp;&nbsp;&nbsp;&nbsp;</div>

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<div id="siteMeshJavaScript">
		<script src="/resources/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<script src="/resources/js/calendar.demo.min.js"></script>
			
		<script>		
			$(document).ready(function() {
				App.init();
				Calendar.init();
				document.getElementById("m_util").className = "active";	
				
			});
				
			
		</script>		
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
 	
</body>
</html>

