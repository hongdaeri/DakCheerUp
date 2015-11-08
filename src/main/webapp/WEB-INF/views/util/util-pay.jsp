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
						<div class="col-xs-5">
							<div class="pay-head">
								<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 나의 희망(현재) 조건을 입력하세요.</h4>
							</div>
							<div class="pay-contents">
								<form class="form-horizontal">
									<table class="table">
										<tbody>
											<tr>
												<td class="table-th"><label><br>연봉/월급 선택</label></td>
												<td>
													<br> 
													<input type="radio" id="annual_salary" name="salary_type" value="annual" checked="checked" /><label for="annual_salary">&nbsp;&nbsp;연봉 </label> &nbsp;&nbsp;
													<input type="radio" id="monthly_salary" name="salary_type" value="monthly" /><label for="monthly_salary">&nbsp;&nbsp;월급</label>
												</td>												
											</tr>
											<tr>
												<td class="table-th"><label>퇴직금</label></td>
												<td> 
													<div id="payYearDiv">														
														<input type="radio" id="rg01" name="retiring_type" checked="checked" /><label for="rg01">&nbsp;&nbsp;별도</label>&nbsp;&nbsp;
														<input type="radio" id="rg02" name="retiring_type" /><label for="rg02">&nbsp;&nbsp;포함</label>
													</div>
													<div id="payMonthDiv">
														연봉인 경우만 선택
													</div>													
												</td>												
											</tr>
											<tr>
												<td class="table-th"><label id="payLabel">연봉</label></td>
												<td> 
													<p><input type="text" id="income_salary" name="income_salary" style="width:96px;" class="i_style03" onkeyup="fn_set_commval(this);fn_disp_korean(this,'korean_num');" /> 원</p>
													<p class="side_input02"><span id="korean_num"></span> 원</p>
												</td>												
											</tr>
											<tr>
												<td class="table-th"><label>비과세액</label></td>
												<td> 
													<p><input type="text" id="tax_free" name="tax_free" style="width:98px" class="i_style01" value="100,000" onkeyup="fn_set_commval(this);return fn_chk_numeric_Salary(this);" /> 원</p>
													<p class="side_input"><input type="checkbox" id="di" name="di" onclick="fn_toggle_input('#tax_free',this.checked);" /><label for="di">직접입력</label></p>
												</td>												
											</tr>
											<tr>
												<td class="table-th"><label>부양가족수</label></td>
												<td> 
													
													<input type="text" id="dependency" name="dependency" style="width:45px;" class="i_style02" value="1" maxlength="7" onkeyup="fn_chk_dependency(this);fn_set_commval(this);" /> 명 <span class="f11">(본인포함)</span>
												</td>												
											</tr>
											<tr>
												<td class="table-th"><label>20세이하 자녀수</label></td>
												<td> 
													<ul class="ul02">
														<li><input type="radio" id="children01" value="0" name="underage_children" checked="checked" disabled /><label for="children01">없음</label></li>
														<li><input type="radio" id="children02" value="1" name="underage_children" disabled /><label for="children02">1명</label></li>
														<li><input type="radio" id="children03" value="2" name="underage_children" disabled /><label for="children03">2명<span>↑</span></label></li>
													</ul>
												</td>												
											</tr>
											<tr>
												<td colspan="2"> <button type="button" onclick="fn_calculate()" class="btn btn-sm btn-warning btn-block">계산하기</button></td>
											</tr>
										</tbody>
									</table>
	                            </form>
							</div>
						</div>
						
						<div class="pay-center-arrow text-center col-xs-1">							
							<img src="/resources/img/util/arrow.gif"/>								
						</div>
						
						<div class="col-xs-6">
							<div class="pay-head">
								<h4 class="m-t-10"><i class="fa fa-chevron-right"></i> 나의 예상 실수령액은?</h4>
							</div>
							<div id="result_box" class="pay-contents-result text-center">
								<form class="form-horizontal">
									<table class="table">
										<tbody>											
											<tr>
												<td class="table-th m-t-10"><label><br>국민연금</label></td>
												<td> 
													<br>
													<input type="text" id="national_pension" class="i_style04" style="width:114px;" readonly /> 원
												</td>												
											</tr>	
											<tr>
												<td class="table-th"><label>건강보험</label></td>
												<td> 
													<input type="text" id="health_insurance" class="i_style04" style="width:114px;" readonly /> 원
												</td>												
											</tr>	
											<tr>
												<td class="table-th"><label>장기요양</label></td>
												<td> 
													<input type="text" id="longterm_insurance" class="i_style04" style="width:114px;" readonly /> 원
												</td>												
											</tr>	
											<tr>
												<td class="table-th"><label>고용보험</label></td>
												<td> 
													<input type="text" id="unemployment_insurance" class="i_style04" style="width:114px;" readonly /> 원
												</td>												
											</tr>	
											<tr>
												<td class="table-th"><label>소득세</label></td>
												<td> 
													<input type="text" id="income_tax" class="i_style04" style="width:114px;" readonly /> 원
												</td>												
											</tr>	
											<tr>
												<td class="table-th"><label>주민세</label></td>
												<td> 
													<input type="text" id="inhabitants_tax" class="i_style04" style="width:114px;" readonly /> 원
												</td>												
											</tr>	
											<tr>
												<td class="table-th"><label>공제액 합계</label></td>
												<td> 
													<input type="text" id="total_exemption" class="i_style04" style="width:114px;" readonly /> 원
												</td>												
											</tr>	
											<tr>
												<td class="table-th"><br><label>실수령액(월)</label></td>
												<td> 
													<br><input type="text" id="expected_receipt" class="i_style04" style="width:114px;" readonly /> 원
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