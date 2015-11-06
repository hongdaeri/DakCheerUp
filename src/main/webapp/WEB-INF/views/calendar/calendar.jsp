<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<link href="/resources/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
	<!-- =================== ETC ======================================= -->
</head>
<body>
<div class="wrapper bg-white">
	<div class="vertical-box">
		<div id="calendar" class="vertical-box-column p-15 calendar"></div>
		<div class="vertical-box-column p-15 bg-silver width-sm">
			<div id="external-events" class="calendar-event">			
				<h4 class=" m-b-20">항목 추가</h4>
				<div class="external-event bg-purple" data-bg="bg-purple" data-title="회의" data-media="<i class='fa fa-comments'></i>" data-desc="4시">
					<h5>
						<i class="fa fa-comments fa-lg fa-fw"></i> 회의
					</h5>
				</div>
				<div class="external-event bg-blue" data-bg="bg-blue" data-title="식사" data-media="<i class='fa fa-cutlery'></i>" data-desc="공룡뒷고기 6시30분">
					<h5>
						<i class="fa fa-cutlery fa-lg fa-fw"></i> 식사
					</h5>
				</div>
				<div class="external-event bg-green" data-bg="bg-green" data-title="스터디그룹" data-media="<i class='fa fa-lightbulb-o'></i>" data-desc="서울역 4번출구 투썸플레이스 4시">
					<h5>
						<i class="fa fa-lightbulb-o fa-lg fa-fw"></i> 스터디그룹
					</h5>
				</div>
				<div class="external-event bg-orange" data-bg="bg-orange" data-title="서류마감" data-media="<i class='fa fa-tasks'></i>" data-desc="시간에 늦지 않도록 유의 하세요.">
					<h5>
						<i class="fa fa-tasks fa-lg fa-fw"></i> 서류마감일
					</h5>
				</div>
				<div class="external-event bg-red" data-bg="bg-red"	data-title="면접" data-media="<i class='fa fa-video-camera'></i>" data-desc="잘 준비하셔서 좋은 결과 있으시길..">
					<h5>
						<i class="fa fa-video-camera fa-lg fa-fw"></i> 면접
					</h5>
				</div>				
			</div>
		</div>
	</div>
</div>	

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<div id="siteMeshJavaScript">
		<script src="/resources/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<script src="/resources/js/calendar.demo.js"></script>
			
		<script>		
			$(document).ready(function() {
				App.init();
				Calendar.init();
				document.getElementById("m_calendar").className = "active";	
				
			});
				
			
		</script>		
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
 	
</body>
</html>

