<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>


	<link href="/resources/css/m_style.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet" />
	<link href="/resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
	<link href="/resources/plugins/simple-line-icons/simple-line-icons.css" rel="stylesheet" />
	<link href="/resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
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
							<li><a id="new-file-up" href="#"><i class="fa fa-file-text-o m-r-10"></i>자소서</a></li>						
							<li class="divider"></li>
							<li><a id="new-group-up" href="#"><i class="fa fa-folder-o m-r-10"></i>그룹</a></li>
						</ul>							
					</div>
					
					<div class="hr"></div>
				</div>
				
				<div class="vertical-box-row">
					<div class="vertical-box-cell">
						<div class="vertical-box-inner-cell">
							<div data-scrollbar="true" data-height="100%" class="wrapper">	
								<c:forEach items="${groupList}" var="group" varStatus="status">
									<!-- group start -->	                            
							        <div class="panel-group" id="accordion">
							        	<!-- panel start -->	
										<div class="panel panel-jaso overflow-hidden">
											<div class="panel-heading">
												<h3 class="panel-title">													
													<a class="accordion-toggle accordion-toggle-styled" data-toggle="collapse" data-parent="#accordion" href="#collapse${status.count}">
													    <i class="fa fa-plus-circle pull-right"></i>${group.groupName}
													</a>
												</h3>
											</div>
											<div id="collapse${status.count}" class="panel-collapse collapse <c:if test="${status.count eq 1}"> in </c:if>">
												<div class="panel-body">
													<c:forEach items="${fileList}" var="file">
														<c:if test="${file.groupNo eq group.groupNo}">
															<c:if test="${file.fileTrashYn eq 'N'}">
																<a href="/jaso/open/${file.fileNo}" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-file-text m-r-10"></i><span class="badge badge-success">${file.qnaTotalCount}</span>${file.fileName}</a>
															</c:if>
														</c:if>
														<!-- files in group -->												
													</c:forEach>
												</div>
											</div>
										</div>										
										<!-- pannel end -->										
									</div>
									<!-- group end -->
								</c:forEach>
								<a href="#" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-star m-r-10"></i>중요 항목</a> 
								<a href="/jaso/trash" class="list-group-item list-group-item-default text-ellipsis"><i class="fa fa-archive m-r-10"></i>휴지통</a> 
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
                	<h5>
               			<a id="close-sajun-div" href="#"><i class="fa fa-angle-left fa-lg pull-left"></i></a> &nbsp;&nbsp;&nbsp;
               			<i class="fa-book fa"></i>&nbsp; 사전 검색               			
               		</h5>
               	 	<form class="form-horizontal">               	 							
						<div class="form-group m-t-20">
						    <div class="col-md-12 text-right">						       
		        				<div class="result-container">
			            			<div class="input-group m-b-20">
                            			<input type="text" class="form-control input-white" placeholder="검색할 단어를 입력하세요..." />
                            			<div class="input-group-btn">
                                			<button type="button" class="btn btn-warning"><i class="fa fa-search"></i> Search</button>                             			
                           				</div>
						    		</div>
						    	</div>
						    </div>
						</div>
						<!-- result -->
                	</form>
                </div>                                        
			</div>
        </div>
        <!--  hide(sajun) menu end -->
	        
        <!--  hide menu (note) start-->
        <div id="note-div" class="vertical-box-column width-300 border-right">
            <div class="vertical-box">
                <div class="wrapper">
                	<h5>
               			<a id="close-note-div" href="#"><i class="fa fa-angle-left fa-lg pull-left"></i></a> &nbsp;&nbsp;&nbsp;
               			<i class="fa-paperclip fa"></i>&nbsp; 노트                 			
               		</h5>
               	 	<form class="form-horizontal ">
               	 		<div class="form-group">
                            <div class="col-md-12">
                            	<textarea class="form-control" placeholder="남기실 노트를 작성하세요." rows="5"></textarea>
                            </div>
                        </div>
						
						<div class="form-group">
							<div class="col-md-8">
						        <a href="javascript:;" class="btn btn-inverse btn-sm"><i class="fa fa-camera"></i></a>
						        <a href="javascript:;" class="btn btn-inverse btn-sm"><i class="fa fa-video-camera"></i></a>
						        
						    </div>												
						    <div class="col-md-4">
						        <button type="submit" class="btn btn-sm btn-warning btn-block">노트 작성</button>
						    </div>
						</div>
						
						<hr style="border:1px solid #000;"/>
                	</form>
                </div>                                        
			</div>
        </div>
        <!--  hide menu (new-file) start-->
        <div id="new-file-div" class="vertical-box-column width-300 border-right">
            <div class="vertical-box">
                <div class="wrapper">                	
               		<h5>
               			<a id="close-new-file-div" href="#"><i class="fa fa-angle-left fa-lg pull-left"></i></a> &nbsp;&nbsp;&nbsp;
               			<i class="icon-docs"></i>&nbsp; 자기소개서 생성                 			
               		</h5>
               	 	<form id="file" class="form-horizontal" method="post" action="/jaso/new-file">
               	 		<div class="form-group m-t-20  has-warning m-r-5">
						    <label class="col-md-3 control-label">이름</label>
						    <div class="col-md-9">
						        <input name="fileName" type="text" class="form-control" />
						    </div>
						</div>
						<div class="form-group has-warning  m-r-5">
						    <label class="col-md-3 control-label">그룹</label>
						    <div class="col-md-9">
						        <select name="groupNo" class="form-control">
						        	<c:forEach items="${groupList}" var="group">
						        		<option value="${group.groupNo}">${group.groupName}</option>
						        	</c:forEach>						        	
						        </select>
						    </div>
						</div>
						<div class="form-group m-t-40">												
						    <div class="col-md-12">
						        <button type="submit" class="btn btn-sm btn-warning btn-block">자기소개서 생성</button>
						    </div>
						</div>
                	</form>
                </div>                                        
			</div>
        </div>
         <!--  hide menu (new-group) start-->
        <div id="new-group-div" class="vertical-box-column width-300 border-right">
            <div class="vertical-box">
                <div class="wrapper">
                	<h5>
               			<a id="close-new-group-div" href="#"><i class="fa fa-angle-left fa-lg pull-left"></i></a> &nbsp;&nbsp;&nbsp;
               			<i class="icon-folder-alt"></i>&nbsp; 그룹 생성                 			
               		</h5>
               	 	<form id="group" name="group" class="form-horizontal" method="post" action="/jaso/new-group">
               	 		<div class="form-group m-t-20 m-r-5">
						    <label class="col-md-3 control-label">그룹명</label>
						    <div class="col-md-9">
						        <input name="groupName" type="text" class="form-control" maxlength="15"/>
						    </div>
						</div>
						
						<div class="form-group m-t-20">
						    <div class="col-md-12 text-right">
						        <button type="submit" class="btn btn-sm btn-warning btn-block">그룹 생성</button>
						    </div>
						</div>
                	</form>
                </div>                                        
			</div>
        </div>
        <!--  hide(note) menu end -->