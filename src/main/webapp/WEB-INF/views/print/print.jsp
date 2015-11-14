<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link href="/resources/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="/resources/plugins/simple-line-icons/simple-line-icons.css" rel="stylesheet" />
	<link href="/resources/css/print.css" rel="stylesheet" />
	<!-- =================== ETC ======================================= -->
</head>
<body>
		
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
                           <form id="print-form" name="printForm" action="/print/preview" method="POST"  target="_blank">
                           	<input type="hidden" name="print-action" id="print-action" value=""/>
                           	<input type="hidden" name="print-template" id="print-template" value=""/>
                           
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
                                    	 <!-- begin row -->
                                         <div class="row">
                                         	<!-- begin wizard head  -->
                                         	<div class="col-md-12 wizard-head-box p-b-10"> 
                                         		<div class="wizard-head-content">STEP 1. 이력서 및 자기소개서 작성</div>
                                         	</div>
                                          	<!-- begin wizard head  -->
                                          
                                            <!-- begin col-6 -->
                                            <div class="col-md-6">
												<div class="m-t-10 p-20 jumbotron m-b-0 text-center">								    	
			                                        <h2><i class="icon-user"></i> 이력서</h2>
			                                        <p class="f-s-16">
			                                        	이력서는 취업의 성패를 좌우하는 ${profile.profileName}님의 얼굴이자 홍보하는 광고문안입니다. 닥취업 이력서 서비스를 이용하여 휴지통으로 가지 않는 ${profile.profileName}님 만의 이력서를 작성하세요. 작성하신 항목과 작성 값을 토대로 프린트 및 파일 저장을 할 수 있습니다.
			                                        </p>
			                                        <p class="f-s-16">
			                                        	${profile.profileName}님은 이력서에 현재 총 ${itemTotalCount }가지 항목을 작성하여 주셨습니다. 
			                                        	<br>출력하기에 충분한가요? 보강이 필요하시다면 이력서 서비스에서 ${profile.profileName}님을 더욱 돋보이게 할수있도록 이력서 항목을 보완하세요.
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
			                                        	${profile.profileName}님은 현재 총 ${fileSize}개의 자기소개서 파일과 ${qnaSize}개의 문항을 작성하여 주셨습니다. 보강이 필요하시다면 자기소개서 서비스에서 ${profile.profileName}님만의 돋보이는 자기소개서를 만들어보세요.
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
                               			<!-- begin row -->
                                        <div class="row">
                                        	<!-- begin wizard head  -->
                                         	<div class="col-xs-12 wizard-head-box p-b-10"> 
                                         		<div class="wizard-head-content">STEP 2. 출력 대상 선택</div>                                         		
                                         	</div>
                                         	
                                          	<!-- end wizard head  -->
                                   			
                                            <!-- begin col-12 -->
                                            <div class="col-xs-12 col-md-6">
                                            	<!-- begin resume panel -->
										        <div class="panel panel-inverse panel-border" data-sortable-id="ui-widget-print-resume">
							                        <div class="panel-heading">
							                            <div class="btn-group pull-right" data-toggle="buttons">
							                                <label id="print-resume-label" class="btn btn-success btn-sm active">
							                                    <input id="print-resume-radio" type="radio" name="printResumeOption" value="true" checked /> <i class="fa fa-print"></i>
							                                </label>
							                                <label id="non-print-resume-label" class="btn btn-white btn-sm">
							                                    <input id="non-print-resume-radio" type="radio" name="printResumeOption" value="false" /> <i class="fa fa-ban"></i>
							                                </label>
							                            </div>
							                            <h4 class="panel-title">이력서 출력대상 선택</h4>
							                        </div>
							                        <div id="print-resume-contents" class="panel-body">					                        		
							                        	<div class="email-content">
											                <table class="table table-email" id="table-resume">
											                    <thead>
											                        <tr>
											                            <th class="print-select-resume"><input type="checkbox" id="resume-select-all"></th>
											                            <th>항목명</th>											                     
											                            <th>항목수</th>											                           
											                        </tr>
											                    </thead>
											                    <tbody>
											                    	<tr>
												                    	<td class="print-select-resume"> </td>
																		<td class="print-subject">기본인적사항</td>
																		<td class="print-date">단일(필수)</td>
																	</tr>
																	<c:if test="${regItemState.family eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="family"/></td>
																			<td class="print-subject">가족관계</td>
																			<td class="print-date">단일(선택)</td>
																		</tr>
																	</c:if>														
																	<c:if test="${regItemState.military eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="military"/></td>
																			<td class="print-subject">병역사항</td>
																			<td class="print-date">단일(선택)</td>
																		</tr>																		
																	</c:if>	
																	<c:if test="${regItemState.academic eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="academic" /></td>
																			<td class="print-subject">학력사항</td>
																			<td class="print-date">단일(선택)</td>
																		</tr>																																		
																	</c:if>	
																	<c:if test="${regItemState.oa eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item"  value="oa" /></td>
																			<td class="print-subject">OA능력</td>
																			<td class="print-date">단일(선택)</td>
																		</tr>																		
																	</c:if>	
																	<c:if test="${regItemState.strength eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="rstrength" /></td>
																			<td class="print-subject">강점/성격</td>
																			<td class="print-date">단일(선택)</td>
																		</tr>																		
																	</c:if>	
																	<c:if test="${regItemState.license eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="license" /></td>
																			<td class="print-subject">자격증/면허증</td>
																			<td class="print-date">${licenseSize}개</td>
																		</tr>																																		
																	</c:if>	
																	<c:if test="${regItemState.langAbility eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="langAbility" /></td>
																			<td class="print-subject">어학능력</td>
																			<td class="print-date">${languageAbilitySize}개</td>
																		</tr>																													
																	</c:if>	
																	<c:if test="${regItemState.langExam eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="langExam" /></td>
																			<td class="print-subject">어학시험</td>
																			<td class="print-date">${languageExamSize}개</td>
																		</tr>																																	
																	</c:if>	
																	<c:if test="${regItemState.award eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="award" /></td>
																			<td class="print-subject">수상내역/공모전</td>
																			<td class="print-date">${awardSize}개</td>
																		</tr>																
																	</c:if>	
																	<c:if test="${regItemState.career eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="career" /></td>
																			<td class="print-subject">경력/실습사항</td>
																			<td class="print-date">${careerSize}개</td>
																		</tr>																																		
																	</c:if>																
																	<c:if test="${regItemState.voluntary eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="voluntary" /></td>
																			<td class="print-subject">봉사활동/대외활동</td>
																			<td class="print-date">${voluntarySize}개</td>
																		</tr>																																		
																	</c:if>
																	<c:if test="${regItemState.education eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="education" /></td>
																			<td class="print-subject">교육이수내역</td>
																			<td class="print-date">${educationSize}개</td>
																		</tr>																																		
																	</c:if>
																	<c:if test="${regItemState.project eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="project" /></td>
																			<td class="print-subject">참여프로젝트</td>
																			<td class="print-date">${projectSize}개 </td>
																		</tr>														
																	</c:if>
																	<c:if test="${regItemState.write eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="write" /></td>
																			<td class="print-subject">저술내역</td>
																			<td class="print-date">${writeSize}개</td>
																		</tr>																																		
																	</c:if>
																	<c:if test="${regItemState.global eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="global" /></td>
																			<td class="print-subject">글로벌경험</td>
																			<td class="print-date">${globalSize}개</td>
																		</tr>																													
																	</c:if>
																	<c:if test="${regItemState.swot eq 1}">
																		<tr>
													                    	<td class="print-select-resume"><input type="checkbox" name="resume-print-item" value="swot" /></td>
																			<td class="print-subject">SWOT분석</td>
																			<td class="print-date">단일(선택)</td>
																		</tr>																		
																	</c:if>																	
																</tbody>
											                </table>											                										                
												        </div>							                            
							                        </div>
							                    </div>
										        <!-- end resume panel -->
                                            </div>
                                            <div class="col-xs-12 col-md-6">
                                            	<!-- begin jaso panel -->
										        <div class="panel panel-inverse panel-border" data-sortable-id="ui-widget-print-jaso">
							                        <div class="panel-heading">
							                            <div class="btn-group pull-right" data-toggle="buttons">
							                                <label id="print-jaso-label" class="btn btn-success btn-sm active">
							                                    <input id="print-jaso-radio" type="radio" name="printJasoOption" value="true" checked /> <i class="fa fa-print"></i>
							                                </label>
							                                <label id="non-print-jaso-label" class="btn btn-white btn-sm">
							                                    <input id="non-print-jaso-radio" type="radio" name="printJasoOption" value="false" /> <i class="fa fa-ban"></i>
							                                </label>
							                            </div>
							                            <h4 class="panel-title">자기소개서 출력대상 선택</h4>
							                        </div>
							                        <div id="print-jaso-contents" class="panel-body">							                                      	
							                        <c:if test="${empty qnaList}">
							                        	<div class="note note-danger m-t-10">																				
															<p>작성하신 자기소개서가 존재하지 않습니다. 자소서를 먼저 작성해주세요.</p>
														</div>
							                        </c:if>	
					                        		<c:if test="${not empty fileList}">
					                        			<c:if test="${not empty qnaList}">
					                        				<div class="email-content">
												                <table class="table table-email" id="table-jaso">
												                    <thead>
												                        <tr>
												                            <th class="print-select-jaso"><input type="checkbox" id="jaso-select-all"></th>														                            											                     
												                            <th>파일명</th>
												                            <th>문항질문</th>											                           
												                        </tr>
												                    </thead>
												                    <tbody>
               															<c:forEach items="${qnaList}" var="qna">
               																<tr>
               																	<td class="print-select-jaso"> 
               																		<input type="checkbox" name="jaso-print-item" value="${qna.qnaNo }"/>
               																	</td>																						
																				<td class="print-subject">
																					<c:forEach items="${fileList}" var="file">
																						<c:if test="${file.fileNo eq qna.fileNo}">${ file.fileName }</c:if>
																					</c:forEach>
																				</td>
																				<td class="print-subject">${qna.qnaQuestion }</td>																					
               																</tr>
               															</c:forEach>
               														</tbody>
									                			</table>											                										                
										       				 </div>
               												
               											</c:if>
               										</c:if>
	                									
	                							
							                        </div>
							                    </div>
										        <!-- end jaso panel -->										                                                 														
											</div>											
                                            <!-- end col-12 -->
                                            <div class="col-xs-12 col-md-12">
                                            	<div class="note note-warning m-t-10">																				
													<p>출력대상 항목은, <b>${profile.profileName}</b>님이 닥취업의 이력서와 자기소서 서비스를 통해 작성하신 항목만 자동으로 구분됩니다.  </p>
												</div>
                                            </div>
                                      	</div>
                                         <!-- end row -->
									</fieldset>
								</div>
								<!-- end wizard step-2 -->
								<!-- begin wizard step-3 -->
								<div>
									<fieldset>										                                      
                                           <!-- begin row -->
                                           <div class="row">
                                           		<!-- begin wizard head  -->
	                                         	<div class="col-md-12 wizard-head-box p-b-10"> 
	                                         		<div class="wizard-head-content">STEP 3. 템플릿 양식 선택</div>
	                                         	</div>
	                                          	<!-- end wizard head  -->
                                           		
                                               <!-- begin col-12 -->
                                               <div class="col-md-12">
													<div class="row">
														<div id="print-template-tumb" class="col-xs-3"> 
															<a href="#" id="pt1"><img id="pt1-tumb" src="/resources/img/print/pt1-resume.png" class="img-responsive print-template-select-n"></a>
														</div>
														<div id="print-template-preview" class="col-xs-9">	
															<div class="row" id="pt1-preview">
																<div class="col-xs-6"><img src="/resources/img/print/pt1-resume.png" class="img-responsive"></div>
																<div class="col-xs-6"><img src="/resources/img/print/pt1-jaso.png" class="img-responsive"></div>
															</div>													
														</div>
													</div>
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
										 <!-- begin row -->
                                           <div class="row">
                                           		<!-- begin wizard head  -->
	                                         	<div class="col-md-12 wizard-head-box p-b-10"> 
	                                         		<div class="wizard-head-content">STEP 4. 파일 저장 또는 출력</div>
	                                         	</div>
	                                          	<!-- end wizard head  -->                                           		
                                               <!-- begin col-6 -->
                                               <div class="col-md-6">
													<div class="m-t-10 p-20 jumbotron m-b-0 text-center">								    	
				                                        <h2><i class="icon-printer"></i> 프린트로 출력</h2>
				                                        <div class="col-md-12 col-xs-12 m-b-20 m-t-20"><a id="print-btn-preview" href="#" class="btn btn-warning btn-lg btn-block" role="button"><i class="fa fa-desktop"></i>&nbsp;미리보기</a></div>
				                                        <div class="col-md-12 col-xs-12"><a href="/jaso" class="btn btn-success btn-lg btn-block" role="button"><i class="fa fa-printer"></i>&nbsp;프린터기로 출력하기</a></div>
			                                    	</div>
												</div>
                                               <!-- end col-6 -->
                                               <!-- begin col-6 -->
                                               <div class="col-md-6">
													<div class="m-t-10 p-20 jumbotron m-b-0 text-center">								    	
				                                        <h2><i class="icon-cloud-download"></i> 파일로 저장</h2>
				                                        <div class="col-md-12 col-xs-12 m-b-20 m-t-20"><a href="/jaso" class="btn btn-warning btn-lg btn-block" role="button"><i class="fa fa-desktop"></i>&nbsp;미리보기</a></div>
				                                        <div class="col-md-6 col-xs-12"><a href="/jaso" class="btn btn-danger btn-lg btn-block" role="button"><i class="fa fa-file-word-o"></i>&nbsp;WORD 파일로 받기</a></div>
				                                        <div class="col-md-6 col-xs-12"><a href="/jaso" class="btn btn-success btn-lg btn-block" role="button"><i class="fa fa-file-pdf-o"></i>&nbsp;PDF 파일로 받기</a></div>
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
		<script src="/resources/js/print.js"></script>
		
		<script>		
			$(document).ready(function() {
				App.init();		
				FormWizard.init();				
				document.getElementById("m_print").className = "active";	
				$("#pt1-preview").hide();
				
			});
				
			
		</script>		
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
 	
</body>
</html>

