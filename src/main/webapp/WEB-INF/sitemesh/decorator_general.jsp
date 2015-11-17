<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="ko" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="ko">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>::닥취업::당신의 취업도우미</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	

	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="/resources/css/m_style.css" rel="stylesheet" />
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="/resources/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="/resources/css/animate.min.css" rel="stylesheet" />
	<link href="/resources/css/style.css" rel="stylesheet" />
	<link href="/resources/css/style-responsive.min.css" rel="stylesheet" />
	<link href="/resources/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="/resources/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->


	<!-- ================== BEGIN PAGE LEVEL CSS STYLE ================== -->
	<sitemesh:write property='head'></sitemesh:write>
	<!-- ================== END PAGE LEVEL CSS STYLE ================== -->
</head>


<body class="overflow-hidden">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed page-sidebar-minified page-content-full-height">
		<!-- begin #header -->
		<div id="header" class="header navbar navbar-default navbar-fixed-top">
			<!-- begin container-fluid -->
			<div class="container-fluid">
				<!-- begin mobile sidebar expand / collapse button -->
				<div class="navbar-header">
					<a href="/" class="navbar-brand f-w-200"><span class="navbar-logo"></span>닥치고취업하자&nbsp;<small>Beta</small></a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->

				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li> <!--  검색바 -->
						<form class="navbar-form full-width">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter keyword" />
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</li>
					
					<li class="dropdown navbar-user"> <!-- 헤더_로그인 -->
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="/resources/img/user-13.jpg" alt="" />
							<span class="hidden-xs">${memberName} 님</span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
							<li><a href="/resume">이력서</a></li>
							<li><a href="/jaso"><span class="badge badge-danger pull-right">2</span> 자기소개서</a></li>
							<li><a href="/calendar">취업달력</a></li>
							<li class="divider"></li>
							<li><a href="/account/modify">계정정보 수정</a></li>
							<li><a href="/account/logout">로그아웃</a></li>
						</ul>
					</li>
				</ul>
				<!-- end header navigation right -->
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end #header -->

		<!-- begin #sidebar#메뉴 -->
		<div id="sidebar" class="sidebar">
			<!-- begin sidebar scrollbar -->
			<div data-scrollbar="true" data-height="100%">
				<!-- begin sidebar user -->
				<ul class="nav">
					<li class="nav-profile">
						<div class="image">
							<a href="javascript:;"><img src="/resources/img/user-13.jpg" alt="" /></a>
						</div>
						<div class="info">
							${memberName}
							<small>취업준비생</small>
						</div>
					</li>
				</ul>
				<!-- end sidebar user -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">Navigation</li>
					<li id="m_index">
						<a href="/">
							<i class="fa fa-home"></i> <span>${memberName}</span>
						</a>
					</li>
					<li id="m_resume">
						<a href="/resume">
							<i class="fa fa-user"></i> <span>이력서</span>
						</a>
					</li>
					<li id="m_jaso" class="">
						<a href="/jaso">
							<i class="fa fa-file-o"></i> <span>자기소개서</span>
						</a>
					</li>
					<li id="m_calendar">
						<a href="/calendar">
							<i class="fa fa-calendar-o"></i> <span>취업달력</span>
						</a>
					</li>
					<li id="m_util">
						<a href="/util">
							 <i class="fa fa-calculator"></i> <span>취업도구</span>
						</a>
					</li>
					<li id="m_print">
						<a href="/print">
							 <i class="fa fa-print"></i> <span>프린트</span>
						</a>
					</li>
					
			        <!-- begin sidebar minify button -->
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
			        <!-- end sidebar minify button -->
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- begin #sidebar#메뉴 -->
		<!-- begin #content -->
		<div id="content" class="content content-full-width">
			<div class="vertical-box">
		    	<div class="vertical-box-column ">
		      		<div class="vertical-box">
		        		<div class="vertical-box-row">
		          			<div class="vertical-box-cell">
		            			<div class="vertical-box-inner-cell">
									<div data-scrollbar="true" data-height="100%" class="wrapper">

									  <!-- ===================== body content============================ -->
										<sitemesh:write property='body'></sitemesh:write>
									<!-- ===================== end body content============================ -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
        

		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->





	<!-- ============BEGIN MODAL ZONE ========================== -->
	<!-- #modal-alert -->
	<div class="modal fade" id="sign-out">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title">닥취업 탈퇴선언!</h4>
				</div>
				<div class="modal-body">
					<div class="alert alert-danger m-b-0">
						<h4><i class="fa fa-info-circle"></i>&nbsp;탈퇴 전 확인하세요.</h4>
						<p>정말 탈퇴 하실 건가요? 닥취업이 충분한 서비스를 제공하지 못하였나 보군요.</p>
						<p><strong>${member.memberName}</strong>님의 마음이 변할지도 모르니, 회원탈퇴는 탈퇴요청 3일 후에 완료 됩니다.</p>
						<p>3일간의 유예기간 동안은 언제든지 탈퇴취소를 요청하실 수 있으며, </p>
						<p>회원 탈퇴 시 <strong>${member.memberName}</strong>님의 소중한 정보는 티끌 없이 모두 삭제 되며 따로 보관하지 않으니,</p>
						<p>개인정보 수집에 대한 걱정은 안하셔도 됩니다.</p>
						<p>더 나은 서비스를 제공하지 못하여 죄송합니다.</p>
					</div>
				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">탈퇴안할게요</a>
					<a href="/account/signOut" class="btn btn-sm btn-danger">탈퇴합니다</a>
				</div>
			</div>
		</div>
	</div>
	
	<div id="LoadMsgDiv">		
		<h2></h2>
	</div>
		<!-- ============END MODAL ZONE ========================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
		<script src="/resources/js/basic.js"></script>
		<script src="/resources/plugins/jquery/jquery-1.9.1.min.js"></script>
		<script src="/resources/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
		<script src="/resources/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
		<script src="/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
		<!--[if lt IE 9]>
			<script src="/resources/crossbrowserjs/html5shiv.js"></script>
			<script src="/resources/crossbrowserjs/respond.min.js"></script>
			<script src="/resources/crossbrowserjs/excanvas.min.js"></script>
		<![endif]-->
		<script src="/resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="/resources/plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="/resources/js/apps.min.js"></script>
		
		<script>		
			$(document).ready(function() {
				$("#LoadMsgDiv").hide();			
				var msg = "${loadMsg}";			
				getEffect(msg);
			});					
		</script>
		
		
		
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
		<sitemesh:write property='div.siteMeshJavaScript'/>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
</body>
</html>