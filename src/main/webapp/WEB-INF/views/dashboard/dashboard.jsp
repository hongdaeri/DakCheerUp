<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<link href="/resources/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap-calendar/css/bootstrap_calendar.css" rel="stylesheet" />
	<link href="/resources/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	<link href="/resources/plugins/morris/morris.css" rel="stylesheet" />
	<link href="/resources/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />

	
	<!-- =================== ETC ======================================= -->
</head>
<body>
	<!-- begin row -->
	<div class="row">
		<div class="col-md-8">
			<div class="widget-chart with-sidebar bg-black">
				<div class="widget-chart-content">
					<h4 class="chart-title">
						닥취업 이용자 취업률 분석 그래프 <small>닥취업 이용자들의 취업률 분석 그래프 입니다.</small>
					</h4>
					<div id="visitors-line-chart" class="morris-inverse"
						style="height: 260px;"></div>
				</div>
				<div class="widget-chart-sidebar bg-black-darker">
					<div class="chart-number">
						1,225,729 개<small>자기소개서 문항 등록수</small>
					</div>
					<div id="visitors-donut-chart" style="height: 160px"></div>
					<ul class="chart-legend">
						<li><i class="fa fa-circle-o fa-fw text-success m-r-5"></i>
							44.0% <span>이력서 작성률</span></li>
						<li><i class="fa fa-circle-o fa-fw text-primary m-r-5"></i>
							56.0% <span>자기소개서 작성률</span></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-inverse" data-sortable-id="index-1">
				<div class="panel-heading">
					<h4 class="panel-title">방문 지역분포</h4>
				</div>
				<div id="visitors-map" class="bg-black" style="height: 181px;"></div>
				<div class="list-group">
					<a href="#"
						class="list-group-item list-group-item-inverse text-ellipsis">
						<span class="badge badge-success">20.95%</span> 1. 충북 충주시
					</a> <a href="#"
						class="list-group-item list-group-item-inverse text-ellipsis">
						<span class="badge badge-primary">16.12%</span> 2. 충북 음성군
					</a> <a href="#"
						class="list-group-item list-group-item-inverse text-ellipsis">
						<span class="badge badge-inverse">14.99%</span> 3. 일본 하라주쿠
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- end row -->
	<!-- begin row -->
	<div class="row">
		<!-- begin col-4 -->
		<div class="col-md-4">
			<!-- begin panel -->
			<div class="panel panel-inverse" data-sortable-id="index-2">
				<div class="panel-heading">
					<h4 class="panel-title">
						실시간 채팅 <span class="label label-success pull-right">4개의 새로운 메시지</span>
					</h4>
				</div>
				<div class="panel-body bg-silver">
					<div data-scrollbar="true" data-height="225px">
						<ul class="chats">
							<li class="left"><span class="date-time">어제
									11:23pm</span> <a href="javascript:" class="name">홍바울</a> <a
								href="javascript:" class="image"><img alt=""
									src="/resources/img/user-12.jpg" /></a>
								<div class="message">안녕하세요. ${memberName}님</div></li>
							<li class="right"><span class="date-time">08:12am</span> <a
								href="#" class="name"><span class="label label-primary">${memberName}</span>
									Me</a> <a href="javascript:" class="image"><img alt=""
									src="/resources/img/user-13.jpg" /></a>
								<div class="message">ㅎㅇ</div></li>
							<li class="left"><span class="date-time">09:20am</span> <a
								href="#" class="name">서지원</a> <a href="javascript:"
								class="image"><img alt="" src="/resources/img/user-10.jpg" /></a>
								<div class="message">아 자다가 숨졌으면 좋겠다-.</div></li>
							<li class="left"><span class="date-time">11:15am</span> <a
								href="#" class="name">황태연</a> <a href="javascript:"
								class="image"><img alt="" src="/resources/img/user-14.jpg" /></a>
								<div class="message">롤 ㄱ?</div></li>
						</ul>
					</div>
				</div>
				<div class="panel-footer">
					<form name="send_message_form" data-id="message-form" action="">
						<div class="input-group">
							<input type="text" class="form-control input-sm" name="message"
								placeholder="새로운 메세지를 작성하세요."> <span
								class="input-group-btn">
								<button class="btn btn-primary btn-sm" type="button">보내기</button>
							</span>
						</div>
					</form>
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end col-4 -->
		<!-- begin col-4 -->
		<div class="col-md-4">
			<!-- begin panel -->
			<div class="panel panel-inverse" data-sortable-id="index-3">
				<div class="panel-heading">
					<h4 class="panel-title">오늘의 채용정보</h4>
				</div>
				<div id="schedule-calendar" class="bootstrap-calendar"></div>
				<div class="list-group">
					<a href="#" class="list-group-item text-ellipsis"> <span
						class="badge badge-success">9:00 am</span> 제니퍼소프트 마감
					</a> <a href="#" class="list-group-item text-ellipsis"> <span
						class="badge badge-primary">2:45 pm</span> NC소프트 공고
					</a>
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end col-4 -->
		<!-- begin col-4 -->
		<div class="col-md-4">
			<!-- begin panel -->
			<div class="panel panel-inverse" data-sortable-id="index-4">
				<div class="panel-heading">
					<h4 class="panel-title">
						최근 가입한 회원 목록<span class="pull-right label label-success">24
							new users</span>
					</h4>
				</div>
				<ul class="registered-users-list clearfix">
					<li><a href="javascript:"><img
							src="/resources/img/user-5.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							홍바울 <small>충북 음성</small>
						</h4></li>
					<li><a href="javascript:"><img
							src="/resources/img/user-3.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							서지원<small>충북 진천</small>
						</h4></li>
					<li><a href="javascript:"><img
							src="/resources/img/user-1.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							장근식 <small>충북 진천</small>
						</h4></li>
					<li><a href="javascript:"><img
							src="/resources/img/user-8.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							박현수 <small>충북 단양</small>
						</h4></li>
					<li><a href="javascript:"><img
							src="/resources/img/user-2.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							이푸름 <small>일본 하라주쿠</small>
						</h4></li>
					<li><a href="javascript:"><img
							src="/resources/img/user-6.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							이현범 <small>중국 북경</small>
						</h4></li>
					<li><a href="javascript:"><img
							src="/resources/img/user-4.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							황태연 <small>미국 LA</small>
						</h4></li>
					<li><a href="javascript:"><img
							src="/resources/img/user-9.jpg" alt="" /></a>
						<h4 class="username text-ellipsis">
							한복동 <small>서울 강남구</small>
						</h4></li>
				</ul>
				<div class="panel-footer text-center">
					<a href="javascript:" class="text-inverse">자세히 보기</a>
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end col-4 -->
	</div>
	<!-- end row -->
	
	
	
	
	
	
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<div id="siteMeshJavaScript">
		<script src="/resources/plugins/morris/raphael.min.js"></script>
		<script src="/resources/plugins/morris/morris.js"></script>
		<script src="/resources/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="/resources/plugins/jquery-jvectormap/jquery-jvectormap-world-merc-en.js"></script>
		<script src="/resources/plugins/bootstrap-calendar/js/bootstrap_calendar.min.js"></script>
		<script src="/resources/plugins/gritter/js/jquery.gritter.js"></script>
		<script src="/resources/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<script src="/resources/js/calendar.demo.min.js"></script>
		<script src="/resources/js/dashboard-v2.min.js"></script>
     	
		<script>
			$(document).ready(function() {
				document.getElementById("m_index").className = "active";	
				
				App.init();
				DashboardV2.init();
					
			});
		</script>
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
 

	
</body>

</html>
