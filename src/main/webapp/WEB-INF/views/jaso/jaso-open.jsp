<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./jaso-head.jsp" flush="false" />

<c:choose>
	<c:when test="${not empty file}"> 
    	<!--  파일 뷰  -->
	    <div class="vertical-box-column">
	    	<div class="vertical-box">
	        	<div class="wrapper">
	            	<div class="col-xs-5 m-r-0 p-r-0">
	            		<input id="fileName" type="text" name="fileName" value="${file.fileName}" class="form-control">
	            	</div>
                    <div class="col-xs-1 m-l-0 p-l-0 text-left">
                    	<c:if test="${file.fileInterestYn eq 'Y'}">
							<a id="file-interest" href="#" class="btn btn-warning"><i class="fa fa-star"></i></a>
						</c:if>
                    	<c:if test="${file.fileInterestYn eq 'N'}">
							<a id="file-interest" href="#" class="btn btn-white"><i class="fa fa-star-o"></i></a>
						</c:if>
                    	
                	</div>
                	 <div class="col-xs-4 m-l-0 p-l-0 text-left">
						<a id="file-trash" href="#" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                    	<a href="javascript:;" class="btn btn-inverse"><i class="fa fa-book"></i></a>
           				<a href="javascript:;" class="btn btn-inverse"><i class="fa fa-university"></i></a>
               			<a href="javascript:;" class="btn btn-inverse"><i class="fa fa-share-alt"></i></a>
                	</div>
                
              		<div class="col-xs-2 p-l-0 m-l-0 text-right">              	
                    	<a id="qnaSave" href="#" class="btn btn-warning btn-block"><i class="fa fa-save"></i></a>
                    </div>
	                    
                </div>
	            <div class="vertical-box-row">
                    <div class="vertical-box-cell">
						<div class="vertical-box-inner-cell">
							<div data-scrollbar="true" data-height="100%" class="wrapper">
								<form id="JasoUpdate" method="post" action="/jaso/update">
									<input type="hidden" name="actionMethod"/>
			   				 		<input type="hidden" name="newFileName" id="newFileName"/>
			   				 		<input type="hidden" name="fileNo" value="${file.fileNo}">
			   				 		<input type="hidden" name="fileInterestYn" value="${file.fileInterestYn}">
			   				 		<input type="hidden" name="fileTrashYn" value="${file.fileTrashYn}">
									<input type="hidden" name="targetQnaNo"/>
									<!-- begin col-6 -->
							    	<div class="col-md-12">
										<div class="panel panel-inverse panel-with-tabs">
											<div class="panel-heading p-0">
				                           		<div class="panel-heading-btn m-r-10 m-t-10">
				                               		<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-expand"><i class="fa fa-expand"></i></a>
				                           		</div>
				                           		<div class="panel-heading-btn m-r-10 m-t-10">
				                               		<a id="qna-add" href="#" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-add-qna"><i class="fa fa-plus"></i></a>
				                           		</div>
				                           		<!-- begin nav-tabs -->
				                           		<div id="qna-tab-nav" class="tab-overflow">
					                           		<ul class="nav nav-tabs nav-tabs-inverse">
					                               		<li class="prev-button"><a href="javascript:;" id="qna-tab-prev" data-click="prev-tab" class="text-success"><i class="fa fa-arrow-left"></i></a></li>
					                                   	<c:set var="index" value="1" />
					                                   	<c:forEach items="${qnaListFromFile}" var="qna">
					                                   		<c:if test="${qna.qnaTrash eq 'N'}">
					                                   			<li><a id="qna-tab-${index}" href="#nav-tab-${index}" data-toggle="tab">질문 ${index}</a></li>
					                                   			<c:set var="index" value="${index+1}" />
					                                   		</c:if>
					                                   	</c:forEach>
					                                   				                               
					                                   	<li class="next-button"><a href="javascript:;" data-click="next-tab" class="text-success"><i class="fa fa-arrow-right"></i></a></li>
					                               </ul>
				                           		</div>
				                       		</div>
				                       
											<div class="tab-content wr bg-silver-lighter m-l-0 m-r-0">
												<c:set var="index" value="1" />
												<c:forEach items="${qnaListFromFile}" var="qna">
													<c:if test="${qna.qnaTrash eq 'N'}">	                                   		
														<div class="tab-pane fade active in " id="nav-tab-${index}">
															<div class="table-responsive">
																<table id="jaso-qna-table" class="table table-condensed table-valign-middle text-center">															
																	<tbody>																	
																		<tr>
																			<td>
																				<textarea name="qnaQuestion" id="answer" class="qna-textarea qna-title textarea form-control" rows="2" placeholder="질문을 입력하세요.">${qna.qnaQuestion}</textarea>
																			</td>																
																		</tr>
																		<tr>	
																			<td>
																				<textarea name="qnaAnswer" id="answer" class="qna-textarea textarea form-control" rows="12"  placeholder="답변을 입력하세요.">${qna.qnaAnswer}</textarea>
																			</td>																													
																		</tr>
																		<tr>	
																			<td>																	
																				<div class="col-xs-3 m-0 p-0 text-left">
																					글자수 : <span id="charNum"></span> 
																				</div>
																				<div class="col-xs-3 m-0 p-0 text-left">
																					공백 미포함 : <span id="charNumNS"></span> 
																				</div>
																				<div class="col-xs-3 m-0 p-0  text-left"> 
																					바이트 수 : <span id="charNumByte"></span>
																				</div>
						                                						<div class="col-xs-3 m-0 p-0 text-right">
						                              
						                                							<input type="hidden" name="qnaNo" value="${qna.qnaNo}">
						                                							<input type="hidden" name="qnaInterestYn" value="${qna.qnaInterestYn}">
						                                							<input type="hidden" name="qnaTrash" value="${qna.qnaTrash}">
						                                							<c:if test="${qna.qnaInterestYn eq 'Y'}">
																						<a name="${index}" href="#" class="qna-interest btn btn-warning"><i class="fa fa-heart"></i></a>
																					</c:if>
						                                							<c:if test="${qna.qnaInterestYn eq 'N'}">
																						<a name="${index}" href="#" class="qna-interest btn btn-white"><i class="fa fa-heart-o"></i></a>
																					</c:if>
																				
																					&nbsp;
																					<a name="${index}" href="#" class="qna-trash btn btn-danger"><i class="fa fa-trash"></i></a>
						                                							<c:set var="index" value="${index+1}" />
						                                						</div>
																			</td>																													
																		</tr>
																	</tbody>
																</table>													
															</div>											
														</div>
													</c:if>
											 	</c:forEach>										
											</div>
										</div>
									</div>
			   				 		<!-- end col-6 -->   
				   				 
			   					</form>
		    				</div>
						</div>
					</div>
				</div>
			</div>		
		</div> <!--  파일 뷰 끝 -->
		</c:when>
		<c:when test="${empty file}">  	    
		    <div class="col-md-12">
	        	<!-- begin error -->
		  		<div class="text-center m-t-40"><h1><br><br>잘못된 접근 방법입니다. <i class="fa fa-warning"></i></h1></div>
	          		<div class="text-center">
	                <h3>문제가 지속 될 시 관리자에게 연락주세요.</h3>
	            </div>		    
		        <!-- end error -->			
			</div> 
		</c:when>
	</c:choose>	

<jsp:include page="./jaso-footer.jsp" flush="false" />	
