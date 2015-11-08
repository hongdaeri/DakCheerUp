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
					<h4 class="panel-title">학점 변환 계산기</h4>
				</div>
				<div class="panel-body p-b-0">
					<div class="row">
						<div class="col-xs-12" id="hakjum-wrap">
							<table class="m-t-20 m-b-20">
								<tr>
									<td>
										<div id="hakjum-input">
											<div class="pay-head">
												<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 내 점수(학점) 입력 </h4>
											</div>
											<div class="pay-contents">
												<form class="form-horizontal">
													<table class="table text-center">
														<tbody>
															
															<tr>												
																<td> 
																	<span>
																		<input type="text" id="cur_point" name="cur_point" class="i_style03" style="width:98px;" onkeyup="return fn_chk_numeric_point(this);" maxlength="4">
																	</span>
																	<span>&nbsp;/&nbsp;</span>
																	<span>
																		<select id="point_type" style="width:48px;">
																			<option value="4.0" ptype="A" selected="">4.0</option>
																			<option value="4.3" ptype="B">4.3</option>
																			<option value="4.5" ptype="C">4.5</option>
																			<option value="5.0" ptype="">5.0</option>
																			<option value="7.0" ptype="">7.0</option>
																			<option value="100" ptype="D">100</option>
																		</select>
																	</span>
																</td>												
															</tr>											
															<tr>
																<td> <button type="button" onclick="fn_points_convert();" class="btn btn-sm btn-warning btn-block">계산하기</button></td>
															</tr>
														</tbody>
													</table>
					                            </form>
											</div>
										</div>
										
										<div id="hakjum-center">							
											<img src="/resources/img/util/arrow.gif"/>								
										</div>
										
										<div id="hakjum-result">
											<div class="pay-head">
												<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 변환 학점</h4>
											</div>
											<div id="result_box" class="pay-contents-result text-center">
												<form class="form-horizontal">
													<table class="table">
														<tbody>									
															
															<tr>
																<td class="text-right"> 
																	<input type="text" id="result_pointA" ppoint="4.0" class="i_style04" style="width:114px;" />
																</td>
																<td class="text-left">
																	<span class="p_txt">&nbsp;/&nbsp;<span class="score">4.0</span>&nbsp;만점</span>	
																</td>												
															</tr>	
															<tr>
																<td class="text-right"> 
																	<input type="text" id="result_pointB" ppoint="4.3" class="i_style04" style="width:114px;" />
																</td>
																<td class="text-left">
																	<span class="p_txt">&nbsp;/&nbsp;<span class="score">4.3</span>&nbsp;만점</span>												
																</td>												
															</tr>
															<tr>
																<td class="text-right"> 
																	<input type="text" id="result_pointC" ppoint="4.5" class="i_style04" style="width:114px;" />
																</td>
																<td class="text-left">
																	<span class="p_txt">&nbsp;/&nbsp;<span class="score">4.5</span>&nbsp;만점</span>												
																</td>												
															</tr>
															<tr>
																<td class="text-right"> 
																	<input type="text" id="result_pointE" ppoint="5.0" class="i_style04" style="width:114px;" />
																</td>
																<td class="text-left">
																	<span class="p_txt">&nbsp;/&nbsp;<span class="score">5.0</span>&nbsp;만점</span>	
																</td>												
															</tr>										
															<tr>
																<td class="text-right"> 
																	<input type="text" id="result_pointF" ppoint="7.0" class="i_style04" style="width:114px;" />
																</td>
																<td class="text-left">
																	<span class="p_txt">&nbsp;/&nbsp;<span class="score">7.0</span>&nbsp;만점</span>	
																</td>												
															</tr>
															<tr>
																<td class="text-right"> 
																	<input type="text" id="result_pointD" ppoint="100" class="i_style04" style="width:114px;" />
																</td>
																<td class="text-left">
																	<span class="p_txt">&nbsp;/&nbsp;<span class="score">100점</span>&nbsp;만점</span>	
																</td>												
															</tr>									
														</tbody>
													</table>
					                            </form>
											</div>
										</div>
									</td>
								</tr>
							</table>							
						</div>	
					</div>				
				</div>
			</div>
			<!-- end panel -->			
		</div>
	</div>
</div>


<jsp:include page="./config/util_footer.jsp" flush="false" />