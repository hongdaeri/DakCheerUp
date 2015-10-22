<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<li class="dropdown">
						<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
							<i class="fa fa-bell-o"></i>
							<span class="label">5</span>
						</a>
						<ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <li class="dropdown-header">알림 (5)</li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-bug media-object bg-red"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">4DRONE, 채용공고 시작</h6>
                                        <div class="text-muted f-s-11">3 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="/resources/img/user-1.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">홍바울님의 메세지</h6>
                                        <p>안녕하세요. ${memberName}님! 반가워요!</p>
                                        <div class="text-muted f-s-11">25 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="/resources/img/user-2.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">이푸름님의 메세지</h6>
                                        <p>화랑가실분 모집합니다.</p>
                                        <div class="text-muted f-s-11">35 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">등록 자소서, 2개 마감임박!</h6>
                                        <div class="text-muted f-s-11">1 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">다음카카오, 신입사원 채용공고 등록</h6>
                                        <div class="text-muted f-s-11">2 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="dropdown-footer text-center">
                                <a href="javascript:;">View more</a>
                            </li>
						</ul>
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
							<li><a href="#">계정정보 수정</a></li>
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
							 <i class="fa fa-lightbulb-o"></i> <span>취업도구</span>
						</a>
					</li>
					<li id="m_community">
						<a href="/community">
							 <i class="fa fa-comments-o"></i> <span>커뮤니티</span>
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






	<!-- ================== BEGIN BASE JS ================== -->
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
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
		<sitemesh:write property='div.siteMeshJavaScript'/>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
</body>
</html>