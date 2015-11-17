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
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="/resources/for-index/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/resources/for-index/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="/resources/for-index/css/animate.min.css" rel="stylesheet" />
	<link href="/resources/for-index/css/style.min.css" rel="stylesheet" />
	<link href="/resources/for-index/css/style-responsive.min.css" rel="stylesheet" />
	<link href="/resources/for-index/css/theme/default.css" id="theme" rel="stylesheet" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="/resources/for-index/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body data-spy="scroll" data-target="#header-navbar" data-offset="51">
    <!-- begin #page-container -->
    <div id="page-container" class="fade">
        <!-- begin #header -->
        <div id="header" class="header navbar navbar-transparent navbar-fixed-top">
            <!-- begin container -->
            <div class="container">
                <!-- begin navbar-header -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.html" class="navbar-brand">
                        <span class="brand-logo"></span>
                        <span class="brand-text">
                            <span class="text-theme">닥치고취업하자</span> <small>Beta</small>
                        </span>
                    </a>
                </div>
                <!-- end navbar-header -->
                <!-- begin navbar-collapse -->
                <div class="collapse navbar-collapse" id="header-navbar">
                    <ul class="nav navbar-nav navbar-right">                        
                        <li><a href="/account">닥취업 시작하기</a></li>
                    </ul>
                </div>
                <!-- end navbar-collapse -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #header -->
        
        <!-- begin #home -->
        <div id="home" class="content has-bg home">
            <!-- begin content-bg -->
            <div class="content-bg">
                <img src="/resources/for-index/img/home-bg.jpg" alt="Home" />
            </div>
            <!-- end content-bg -->
            <!-- begin container -->
            <div class="container home-content">
                <h1>취업준비, 이제 닥취업에서 하세요!</h1>
                <h3>이력서, 자기소개서에 필요한 모든 기능을 모았습니다.</h3>
                <p>
                    본 페이지는 2015년 11월 19일 <a>제23회 졸업작품 전시회</a>를 위해 제작되었으며 현제 베타버전 입니다.<br />
                    정식 서비스 시, 수정 된 소개페이지를 보실 수 있습니다.
                    
                </p>
                <a href="/account" class="btn btn-theme">회원가입하기</a> <a href="/account" class="btn btn-outline">로그인하기</a><br />
                <br />
                닥취업은 회원제로 운영되어 회원가입 후 로그인 하셔야 이용 가능합니다.
            </div>
            <!-- end container -->
        </div>
        <!-- end #home -->
        
        <!-- begin #milestone -->
        <div id="milestone" class="content bg-black-darker has-bg" data-scrollview="true">
            <!-- begin content-bg -->
            <div class="content-bg">
                <img src="/resources/for-index/img/milestone-bg.jpg" alt="Milestone" />
            </div>
            <!-- end content-bg -->
            <!-- begin container -->
            <div class="container">
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-3 -->
                    <div class="col-md-3 col-sm-3 milestone-col">
                        <div class="milestone">
                            <div class="number" data-animation="true" data-animation-type="number" data-final-number="192">192</div>
                            <div class="title">명의 회원 수</div>
                        </div>
                    </div>
                    <!-- end col-3 -->
                    <!-- begin col-3 -->
                    <div class="col-md-3 col-sm-3 milestone-col">
                        <div class="milestone">
                            <div class="number" data-animation="true" data-animation-type="number" data-final-number="439">439</div>
                            <div class="title">개의 자기소개 파일</div>
                        </div>
                    </div>
                    <!-- end col-3 -->
                    <!-- begin col-3 -->
                    <div class="col-md-3 col-sm-3 milestone-col">
                        <div class="milestone">
                            <div class="number" data-animation="true" data-animation-type="number" data-final-number="89291">9,291</div>
                            <div class="title">줄의 자기소개서 문항</div>
                        </div>
                    </div>
                    <!-- end col-3 -->
                    <!-- begin col-3 -->
                    <div class="col-md-3 col-sm-3 milestone-col">
                        <div class="milestone">
                            <div class="number" data-animation="true" data-animation-type="number" data-final-number="129">129</div>
                            <div class="title">번의 출력</div>
                        </div>
                    </div>
                    <!-- end col-3 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #milestone -->       
        
        
        <!-- begin #about -->
        <div id="about" class="content" data-scrollview="true">
            <!-- begin container -->
            <div class="container" data-animation="true" data-animation-type="fadeInDown">
                <h2 class="content-title">지구에서 가장 편하고 쉽게 취업준비 하기!</h2>
                <p class="content-desc">
                    취업준비 시, 오직 닥취업만 있으면 되도록 취업준비와 관련된 모든 행동 편의체계를 제공하는 것이 우리의 목표입니다.
                </p>
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-6">
                        <!-- begin about -->
                        <div class="about">
                            <h3>전통적 취업준비</h3>
                            <p>
                                대한민국의 청년 일자리 문제는 현재 국가적 과제이며, 2015년 현재 <a>250만명의 잠재적 취업준비생</a>이 존재한다.<br>
                                취업이 점점 어려워짐에 따라, 취업 준비생들에게 '이력 관리 및 자기소개서'는 가장 민감하고 중요한 부분이며, 취업의 성패를 가르는 중요한 요소가 되었다.<br> 
                                취업준비생들의 스펙 쌓기 경쟁 과열화는 계속 높아지고 있고, 자격증, 외국어, 대외활동 등 관리해야 할 스펙 사항들은 점점 많아지고 있다. 
                                하지만 맹목적 스펙 쌓기에만 열중 할 뿐 정작 이를 효율적으로 관리하는 것에는 많은 어려움을 느끼고 있는 실정이다.
                            </p>
                            <p>
                                <a>취업 준비생들은 이력서 및 자기 소개서 관리를 어떻게 하고 있을까?</a> <br>
                                대부분 인터넷에서 받은 양식 파일에 작성,수정하고 저장하여 파일형태로 보관할 것이다. 
                                기업마다 다른 양식, 질문 문항에 따라, 지원하는 곳이 많아 질 수록 작성 및 관리 해야 하는 파일들은 늘어만 갈 것이다. 
                                또한 USB, 노트북, 휴대폰등으로 계속 옮겨 다니다 보니 분실 및 파일 훼손의 위험도 있다. <br>이것이 이력서 및 자기소개서 관리의 전통적인 방법이다. 
                            </p>
                        </div>
                        <!-- end about -->
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-6">
                        <h3>우리는 생각했습니다.</h3>
                        <!-- begin about-author -->
                        <div class="about-author">
                            <div class="quote bg-silver">
                                <i class="fa fa-quote-left"></i>
                                <h3>이력서, 자기소개서, 각종 증빙서류, 파일 등<br> 해야할 것은 많고ㅠㅠ<br>뭐부터 해야하지?<br>좀 한 곳에서 편하게 할 수 없을까?</h3>
                                <i class="fa fa-quote-right"></i>
                            </div>
                            <div class="author">
                                <div class="image">
                                    <img src="/resources/for-index/img/user-1.jpg" alt="Sean Ngu" />
                                </div>
                                <div class="info">
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end about-author -->
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-12">
                        <h3>그래서 만들었습니다</h3>
                        <!-- begin skills -->
                        <div class="skills">
                          <img src="/resources/for-index/img/dakcheerup-make.jpg" class="img-responsive"/><br>                       
                            <div class="skills-name">약 2달 반의 제작 기간 / </div>
                            <div class="progress progress-striped">
                                <div class="progress-bar progress-bar-success" style="width: 95%">
                                    <span class="progress-number">95%</span>
                                </div>
                            </div>
                            <div class="skills-name">Programming</div>
                            <div class="progress progress-striped">
                                <div class="progress-bar progress-bar-success" style="width: 90%">
                                    <span class="progress-number">90%</span>
                                </div>
                            </div>                           
                        </div>
                        <!-- end skills -->
                    </div>
                    <!-- end col-4 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #about -->   
        
      
        
        <!-- begin #quote -->
        <div id="quote" class="content bg-black-darker has-bg" data-scrollview="true">
            <!-- begin content-bg -->
            <div class="content-bg">
                <img src="/resources/for-index/img/quote-bg.jpg" alt="Quote" />
            </div>
            <!-- end content-bg -->
            <!-- begin container -->
            <div class="container" data-animation="true" data-animation-type="fadeInLeft">
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-12 -->
                    <div class="col-md-12 quote">
                        <i class="fa fa-quote-left"></i> 조금 더 다듬어지고 유사 애플리케이션들과의 차별성이 확보된다면, <br />
                        지금 당장 <span class="text-theme">사업화</span>해도 될 만큼의 완성도를 갖추었다!  
                        <i class="fa fa-quote-right"></i>
                        <small><span class="text-theme">한복동</span>, 현 충북소프트웨어산업협회 협회장, 한국교통대학교 소프트웨어학과 교수</small>
                    </div>
                    <!-- end col-12 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #quote -->
        
        <!-- beign #service -->
        <div id="service" class="content" data-scrollview="true">
            <!-- begin container -->
            <div class="container">
                <h2 class="content-title">Our Services</h2>
                <p class="content-desc">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consectetur eros dolor,<br />
                    sed bibendum turpis luctus eget
                </p>
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="service">
                            <div class="icon bg-theme" data-animation="true" data-animation-type="bounceIn"><i class="fa fa-cog"></i></div>
                            <div class="info">
                                <h4 class="title">Easy to Customize</h4>
                                <p class="desc">Duis in lorem placerat, iaculis nisi vitae, ultrices tortor. Vestibulum molestie ipsum nulla. Maecenas nec hendrerit eros, sit amet maximus leo.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="service">
                            <div class="icon bg-theme" data-animation="true" data-animation-type="bounceIn"><i class="fa fa-paint-brush"></i></div>
                            <div class="info">
                                <h4 class="title">Clean & Careful Design</h4>
                                <p class="desc">Etiam nulla turpis, gravida et orci ac, viverra commodo ipsum. Donec nec mauris faucibus, congue nisi sit amet, lobortis arcu.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="service">
                            <div class="icon bg-theme" data-animation="true" data-animation-type="bounceIn"><i class="fa fa-file"></i></div>
                            <div class="info">
                                <h4 class="title">Well Documented</h4>
                                <p class="desc">Ut vel laoreet tortor. Donec venenatis ex velit, eget bibendum purus accumsan cursus. Curabitur pulvinar iaculis diam.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                </div>
                <!-- end row -->
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="service">
                            <div class="icon bg-theme" data-animation="true" data-animation-type="bounceIn"><i class="fa fa-code"></i></div>
                            <div class="info">
                                <h4 class="title">Re-usable Code</h4>
                                <p class="desc">Aenean et elementum dui. Aenean massa enim, suscipit ut molestie quis, pretium sed orci. Ut faucibus egestas mattis.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="service">
                            <div class="icon bg-theme" data-animation="true" data-animation-type="bounceIn"><i class="fa fa-shopping-cart"></i></div>
                            <div class="info">
                                <h4 class="title">Online Shop</h4>
                                <p class="desc">Quisque gravida metus in sollicitudin feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="service">
                            <div class="icon bg-theme" data-animation="true" data-animation-type="bounceIn"><i class="fa fa-heart"></i></div>
                            <div class="info">
                                <h4 class="title">Free Support</h4>
                                <p class="desc">Integer consectetur, massa id mattis tincidunt, sapien erat malesuada turpis, nec vehicula lacus felis nec libero. Fusce non lorem nisl.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #about -->
        
        <!-- begin #client -->
        <div id="client" class="content has-bg bg-green" data-scrollview="true">
            <!-- begin content-bg -->
            <div class="content-bg">
                <img src="/resources/for-index/img/client-bg.jpg" alt="Client" />
            </div>
            <!-- end content-bg -->
            <!-- begin container -->
            <div class="container" data-animation="true" data-animation-type="fadeInUp">
                <h2 class="content-title">사용자들의 거침없는 리뷰</h2>
                <!-- begin carousel -->
                <div class="carousel testimonials slide" data-ride="carousel" id="testimonials">
                    <!-- begin carousel-inner -->
                    <div class="carousel-inner text-center">
                        <!-- begin item -->
                        <div class="item active">
                            <blockquote>
                                <i class="fa fa-quote-left"></i>
                                그동안 이력서는 어떻게 써야하나, 자소서는 어떻게 써야하나 고민 많이했는데<br />
                                닥취업 서비스를 통해 정말 쉽고 편리하게 취업준비를 할 수 있었습니다.
                                <i class="fa fa-quote-right"></i>
                            </blockquote>
                            <div class="name"> — <span class="text-theme">이푸름</span>, 대학생(취업준비생)</div>
                        </div>
                        <!-- end item -->
                        <!-- begin item -->
                        <div class="item">
                            <blockquote>
                                <i class="fa fa-quote-left"></i>
                                힘들게 작성한 자소서 파일이 날아간 경험이 있는데, 파일 날아갈 걱정 없어서 좋습니다.<br />
                                또한 자소서를 작성하면서 글자수 체크해주는 기능은 더할 나위없이 편하고 좋네요.
                                <i class="fa fa-quote-right"></i>
                            </blockquote>
                            <div class="name"> — <span class="text-theme">장근식</span>, 요리연구가 지망생</div>
                        </div>
                        <!-- end item -->
                        <!-- begin item -->
                        <div class="item">
                            <blockquote>
                                <i class="fa fa-quote-left"></i>
                                이력서와 자기소개서 작성한 것을 한방에 프린트 할 수 있다니!!<br />
                                이제 취업준비하면서 한글이나 MS오피스를 어둠의 경로에서 불법 다운로드 할 필요성을 못느끼겠네요.
                                <i class="fa fa-quote-right"></i>
                            </blockquote>
                            <div class="name"> — <span class="text-theme">박현수</span>, 농업가(과수원 운영)</div>
                        </div>
                        <!-- end item -->
                    </div>
                    <!-- end carousel-inner -->
                    <!-- begin carousel-indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#testimonials" data-slide-to="0" class="active"></li>
                        <li data-target="#testimonials" data-slide-to="1" class=""></li>
                        <li data-target="#testimonials" data-slide-to="2" class=""></li>
                    </ol>
                    <!-- end carousel-indicators -->
                </div>
                <!-- end carousel -->
            </div>
            <!-- end containter -->
        </div>
        <!-- end #client -->
        
       
        
        <!-- begin #security -->
        <div id="security" class="content" data-scrollview="true">
            <!-- begin container -->
            <div class="container" data-animation="true" data-animation-type="fadeInDown">
                <h2 class="content-title">강력한 보안성</h2>
                <p class="content-desc">
                    닥취업은 강력한 보안성을 약속드립니다. 사소한 개인정보 하나 빠짐없이 철저히 지켜드립니다.<br>
                    닥취업은 NASA, NETFLIX 등이 쓰고 있는 세계최고의 클라우드 웹 서버 AMAZON EC2 를 통해 서비스를 제공합니다.<br>
                    모든 데이터는 안전하게 기록되고 관리됩니다.<br> 또한, GeoTrust의 SSL을 통해 2048bit RSA 키로 암호화된 형태로 정보를 주고 받기 때문에 더욱 안전합니다. <br><br>
                    닥취업은 사용자의 정보를 안전하게 보호하는데 모든 전력을 쏟겠습니다.                  
                </p>
                <p class="content-desc">
                	<img src="/resources/for-index/img/amazonws.jpg" width="150" alt="Amazon EC2 Web Server"/>
                    <img src="/resources/for-index/img/geo-trust.jpg" width="150" alt="GeoTrust"/>
                </p>                
            </div>
            <!-- end container -->
        </div>
        <!-- end #security -->
        
         <!-- beign #action-box -->
        <div id="action-box" class="content has-bg" data-scrollview="true">
            <!-- begin content-bg -->
            <div class="content-bg">
                <img src="/resources/for-index/img/action-bg.jpg" alt="Action" />
            </div>
            <!-- end content-bg -->
            <!-- begin container -->
            <div class="container" data-animation="true" data-animation-type="fadeInRight">
                <!-- begin row -->
                <div class="row action-box">
                    <!-- begin col-9 -->
                    <div class="col-md-9 col-sm-9">
                        <div class="icon-large text-theme">
                            <i class="fa fa-binoculars"></i>
                        </div> 
                        <h3>언제, 어디서든, 어느 디바이스에서든! - 닥취업의 3Any</h3>
                        <p>
                           닥취업은 데스크톱 버전, 모바일 웹 버전을 지원하며 완벽하게 작동합니다. 또한, 안드로이드 및 IOS 애플리케이션도 현재 준비하고 있습니다. 
                           
                        </p>
                    </div>
                    <!-- end col-9 -->
                    <!-- begin col-3 -->
                    <div class="col-md-3 col-sm-3">
                        <a class="btn btn-outline btn-block"><i class="fa fa-android fa-2x text-theme"></i> X <i class="fa fa-apple fa-2x"></i> = COMMING SOON!</a><br>                        
                    </div>
                    <!-- end col-3 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #action-box -->
        
        <!-- begin #team -->
        <div id="team" class="content" data-scrollview="true">
            <!-- begin container -->
            <div class="container">
                <h2 class="content-title">Team 4Drone</h2>
                <p class="content-desc">
                    모든 집중을 다 하여 가장 빠르게 러쉬하는 4드론 저글링 올인전략!<br>
                    그게 우리의 개발 모토입니다. 닥취업닷컴은 시작에 불과합니다.
                </p>
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <!-- begin team -->
                        <div class="team">             
                            <div class="image" data-animation="true" data-animation-type="flipInX">
                                <img src="/resources/for-index/img/hong.jpg" alt="Ryan Teller" />
                            </div>
                            <div class="info">
                                <h3 class="name">홍바울</h3>
                                <div class="title text-theme">DEVELOPER</div>
                                <p>사과즙 매니아 / 철권 고수 / 실버 4 탑신병자<br>졸리면 충분히 자고, 일어나면 다음 잘때까지 개발한다.(희망)</p>
                             
                                <div class="social">
                                    <a href="mailto:web@ut.ac.kr"><i class="fa fa-envelope fa-lg fa-fw"></i></a>
                                    <a href="https://www.facebook.com/jinist" target="_blank"><i class="fa fa-facebook fa-lg fa-fw"></i></a>
                                    <a href="https://github.com/h0ngz"target="_blank"><i class="fa fa-git fa-lg fa-fw"></i></a>
                                </div>
                            </div>                     
                        </div>
                        <!-- end team -->
                    </div>
                    <!-- end col-4 -->
                     <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <!-- begin team -->
                        <div class="team">             
                            <div class="image" data-animation="true" data-animation-type="flipInX">
                                <img src="/resources/for-index/img/seo.jpg" alt="Ryan Teller" />
                            </div>
                            <div class="info">
                                <h3 class="name">서지원</h3>
                                <div class="title text-theme">DEVELOPER</div>
                                <p>호날두 동생 / 100m 12초 / 골드 4 리븐장인 <br> 밥은 안먹어도 축구는 해야한다. 아니 밥도 먹어야한다.</p>                              
                                <div class="social">
                                	<a href="mailto:alalalkim@naver.com"><i class="fa fa-envelope fa-lg fa-fw"></i></a>
                                    <a href="https://www.facebook.com/key0211" target="_blank"><i class="fa fa-facebook fa-lg fa-fw"></i></a>
                                    <a href="https://instagram.com/seoji.13" target="_blank"><i class="fa fa-instagram fa-lg fa-fw"></i></a>                                    
                                </div>
                            </div>                     
                        </div>
                        <!-- end team -->
                    </div>
                    <!-- end col-4 -->
               		<!-- begin col-4 -->
                    <div class="col-md-4 col-sm-4">
                        <!-- begin team -->
                        <div class="team">             
                            <div class="image" data-animation="true" data-animation-type="flipInX">
                                <img src="/resources/for-index/img/you.jpg" alt="Ryan Teller" />
                            </div>
                            <div class="info">
                                <h3 class="name">YOU</h3>
                                <div class="title text-theme">NEW MEMBER</div>
                                <p>4드론과 함께할 새로운 멤버를 영입하고 있습니다.<br>그것이 무한한 열정을 가진 당신이었음 좋겠습니다.</p>
                               
                            </div>                     
                        </div>
                        <!-- end team -->
                    </div>
                    <!-- end col-4 -->                 
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #team -->
        
       
        
        <!-- begin #contact -->
        <div id="contact" class="content bg-silver-lighter" data-scrollview="true">
            <!-- begin container -->
            <div class="container">
                <h2 class="content-title">연락주세요</h2>
                <p class="content-desc">
                    사용자들의 불편, 질문, 요청, 신고, 제안 등 어떠한 목소리에도 빠짐없이 귀기울이겠습니다. <br />
                    닥취업 운영진들의 귀는 24시간 열려 있습니다. 
                </p>
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-6 -->
                    <div class="col-md-6" data-animation="true" data-animation-type="fadeInLeft">
                        <h3>건의/문의 하실 것이 있다면,</h3>
                        <p>
                            아래의 연락처 또는 오른쪽의 폼을 이용해 무슨 요일이든, 몇 시든 상관없이 주저말고 연락주세요.
                            최대 3시간 안에 맘에 드실 답변을 드릴 것을 약속 합니다.                            
                        </p>
                        <p>
                            <strong>4Drone Studio</strong><br />
                            충주시 대소원면 검단리 탑타운 1동 101호<br />
                            한국교통대학교 소프트웨어학과 학과사무실<br /> 
                            카카오톡 : h0ngz                          
                        </p>
                        <p>
                            <span class="phone">(010)-8985-5334</span><br />
                            <a href="mailto:web@ut.ac.kr">web@ut.ac.kr</a>
                        </p>
                    </div>
                    <!-- end col-6 -->
                    <!-- begin col-6 -->
                    <div class="col-md-6 form-col" data-animation="true" data-animation-type="fadeInRight">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-md-3">이름 <span class="text-theme">*</span></label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">이메일 <span class="text-theme">*</span></label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">메세지 <span class="text-theme">*</span></label>
                                <div class="col-md-9">
                                    <textarea class="form-control" rows="10"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3"></label>
                                <div class="col-md-9 text-left">
                                    <button type="submit" class="btn btn-theme btn-block">메세지 전송하기</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- end col-6 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #contact -->
        
        <!-- begin #footer -->
        <div id="footer" class="footer">
            <div class="container">
                <div class="footer-brand">
                    <div class="footer-brand-logo"></div>
                    닥치고 취업하자
                </div>
                <p>
                    &copy; Copyright 닥치고 취업하자 2015 <br />
                    더 나은 고객 맞춤 서비스를 지향합니다. <a href="#">4Drone</a>이 만들고 함께 합니다.
                </p>
                <p class="social-list">
                	<a href="mailto:web@ut.ac.kr"><i class="fa fa-envelope fa-fw"></i></a> 
                    <a href="http://facebook.com/h0ngz" target="_blank"><i class="fa fa-facebook fa-fw"></i></a>
                    <a href="http://github.com/h0ngz" target="_blank"><i class="fa fa-git fa-fw"></i></a>
                    <a href="http://blog.naver.com/h0ngz" target="_blank"><i class="fa fa-bolt fa-fw"></i></a>                    
                    <a href="http://sw.ut.ac.kr" target="_blank"><i class="fa fa-university fa-fw"></i></a>                                
                </p>
            </div>
        </div>
        <!-- end #footer -->
        
        
    </div>
    <!-- end #page-container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="/resources/for-index/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="/resources/for-index/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="/resources/for-index/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="/resources/for-index/crossbrowserjs/html5shiv.js"></script>
		<script src="/resources/for-index/crossbrowserjs/respond.min.js"></script>
		<script src="/resources/for-index/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="/resources/for-index/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script src="/resources/for-index/plugins/scrollMonitor/scrollMonitor.js"></script>
	<script src="/resources/for-index/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<script>    
	    $(document).ready(function() {
	        App.init();
	    });
	</script>
</body>
</html>
