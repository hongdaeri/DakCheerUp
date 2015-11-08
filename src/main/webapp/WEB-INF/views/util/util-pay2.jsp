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
					<h4 class="panel-title">실 급여 계산기 &nbsp; (Ver 1.0)</h4>
				</div>
				<div class="panel-body p-b-0">
					<div class="row">
						<div class="col-xs-6">
							<div class="pay-head">
								나의 희망(현재) 조건을 입력하세요.
							</div>
							<div class="pay-contents">
								<form class="form-horizontal">
									<table class="table">
										<tbody>
											<tr>
												<td><label>연봉/월급 선택</label></td>
												<td> 
													<input type="radio" id="payOption-year" name="payOption" value="year" checked /> 연봉 &nbsp;&nbsp;											
													<input type="radio" id="payOption-month" name="payOption" value="month" /> 월급
												</td>												
											</tr>
											<tr>
												<td><label>퇴직금</label></td>
												<td> 
													<div id="payYearDiv">
														<input type="radio" name="severancPay" value="separate" checked /> 별도 &nbsp;&nbsp;
														<input type="radio" name="severancPay" value="include" /> 포함
													</div>
													<div id="payMonthDiv">
														연봉인 경우만 선택
													</div>													
												</td>												
											</tr>
											<tr>
												<td><label id="payLabel">연봉</label></td>
												<td> 
													<div><input type="text" name="payValue"/> 원</div>
													<div id="payLabel-kor"> 한글금액부분</div>
												</td>												
											</tr>
											<tr>
												<td><label>비과세액</label></td>
												<td> 
													<div> <input id="non-taxable-div" name="non-taxable" disabled type="text" value="100000"/> 원</div>													
													<div> <input id="custom-non-taxable" type="checkbox" /> 직접입력</div>
												</td>												
											</tr>
											<tr>
												<td><label>부양 가족수</label></td>
												<td> 
													<input type="text" id="dependency" /> 명(본인포함)
												</td>												
											</tr>
											<tr>
												<td><label>20세이하 자녀수</label></td>
												<td> 
													<input type="text"/> 명
												</td>												
											</tr>
											<tr>
												<td colspan="2"> <button type="submit" class="btn btn-sm btn-success">계산하기</button></td>
											</tr>
										</tbody>
									</table>
	                            </form>
							</div>
						</div>
						
						<div class="col-xs-1">
						>>
						</div>
						
						<div class="col-xs-5">
							<div class="pay-head">예상 실수령액은?</div>
							<div class="pay-contents">
								<form class="form-horizontal">
									<table class="table">
										<tbody>											
											<tr>
												<td><label>국민연금</label></td>
												<td> 
													<input type="text"/> 원
												</td>												
											</tr>	
											<tr>
												<td><label>건강보험</label></td>
												<td> 
													<input type="text"/> 원
												</td>												
											</tr>	
											<tr>
												<td><label>장기요양</label></td>
												<td> 
													<input type="text"/> 원
												</td>												
											</tr>	
											<tr>
												<td><label>고용보험</label></td>
												<td> 
													<input type="text" /> 원
												</td>												
											</tr>	
											<tr>
												<td><label>소득세</label></td>
												<td> 
													<input type="text"/> 원
												</td>												
											</tr>	
											<tr>
												<td><label>지방소득세</label></td>
												<td> 
													<input type="text"/> 원
												</td>												
											</tr>	
											<tr>
												<td><label>공제액 합계</label></td>
												<td> 
													<input type="text"/> 원
												</td>												
											</tr>	
											<tr>
												<td><label>실수령액(월)</label></td>
												<td> 
													<input type="text"/> 원
												</td>												
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