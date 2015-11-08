<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/util_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
	<div class="row">
		<div class="col-md-12" data-spy="scroll" data-target="util-menu">
			<!-- begin panel -->
			<div class="panel panel-inverse" data-height="100%"
				data-sortable-id="ui-widget-1">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">어학점수 변환 계산기 (Ver 1.0)</h4>
				</div>
				<div class="panel-body p-b-0">
					<div class="row">													
						<div class="col-xs-12 col-sm-12 col-md-5">
							<div class="pay-head">
								<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 내 점수(레벨) 입력 </h4>
							</div>
							<div class="pay-contents">
								<form class="form-horizontal">
									<table class="table text-center">
										<tbody>											
											<tr>												
												<td> 
													<span>
														<input type="text" id="cur_point" class="i_style03" style="width:98px;" />&nbsp;점 :&nbsp;
													</span>																
													<span>
														<select id="exam_type" style="width:108px;">
															<option value="TOEIC" selected="selected">TOEIC</option>
															<option value="IELTS">TEPS</option>
															<option value="CBT">TOEFL(CBT)</option>
															<option value="IBT">TOEFL(IBT)</option>
															<option value="PBT">TOEFL(PBT)</option>
														</select>
													</span>
												</td>												
											</tr>											
											<tr>
												<td> <button type="button" onclick="fn_english_convert();" class="btn btn-sm btn-warning btn-block">계산하기</button></td>
											</tr>
										</tbody>
									</table>
	                            </form>
							</div>
						</div>
										
						<div id="eng-conv-center" class="col-md-1 hidden-xs hidden-sm">							
							<img src="/resources/img/util/arrow.gif"/>								
						</div>
										
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div class="pay-head">
								<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 변환 점수</h4>
							</div>
							<div id="result_box" class="pay-contents-result text-center">
								<form class="form-horizontal">
									<table class="table">
										<tbody>									
											
											<tr>
												<td class="text-right">TOEIC 점수</td>
												<td class="text-left"><input type="text" id="result_point_toeic" arridx="0" class="i_style04" style="width:57px;" /> <span>점<span class="slash"> / </span>990점</span></td>
											</tr>
											<tr>
												<td class="text-right">TEPS 점수</td>
												<td class="text-left"><input type="text" id="result_point_ielts" arridx="4" class="i_style04" style="width:57px;" /> <span>점<span class="slash"> / </span>990점</span></td>
											</tr>
											<tr>
												<td class="text-right">TOFEL(CBT) 점수</td>
												<td class="text-left"><input type="text" id="result_point_cbt" arridx="2" class="i_style04" style="width:57px;" /> <span>점<span class="slash"> / </span>300점</span></td>
												
											</tr>
											<tr>
												<td class="text-right">TOFEL(IBT) 점수</td>
												<td class="text-left"><input type="text" id="result_point_ibt" arridx="1" class="i_style04" style="width:57px;" /> <span>점<span class="slash"> / </span>120점</span></td>
											</tr>
											<tr>
												<td class="text-right">TOFEL(PBT) 점수</td>
												<td class="text-left"><input type="text" id="result_point_pbt" arridx="3" class="i_style04" style="width:57px;" /> <span>점<span class="slash"> / </span>677점</span></td>
												
											</tr>
											<tr>
												<td class="text-right">TOEIC Speaking</td>
												<td class="text-left"><input type="text" id="result_point_speaking" arridx="" class="i_style04" style="width:57px;" /> <span>Lv<span class="slash"> / </span>8Lv</span></td>
												
											</tr>
											<tr>
												<td class="text-right">TOEIC Writing</td>
												<td class="text-left"><input type="text" id="result_point_writing" arridx="" class="i_style04" style="width:57px;" /> <span>Lv<span class="slash"> / </span>9Lv</span></td>
												
											</tr>											
																				
										</tbody>
									</table>
	                            </form>
							</div>
						</div>											
					</div>				
				</div>
			</div>
			<!-- end panel -->			
		</div>
	</div>
</div>


<jsp:include page="./config/util_footer.jsp" flush="false" />