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
						<div class="col-xs-12">
							<!-- 왼쪽 컨텐츠 -->
							<div id="pay-box">
								<h2><img src="http://image.career.co.kr/career_new/tools/tit_tab01.gif" title="실 급여 계산기" alt="자신의 연봉 및 월급을 입력해 보세요. 세금을 제외한 실 급여를 계산 해 드립니다" /></h2>
								
									<!-- contents_box -->
									<div class="contents_box">
										<h3><img src="http://image.career.co.kr/career_new/tools/tt_input_pay.gif" alt="희망(현재) 연봉 입력" /></h3>
										<fieldset>
											<legend>연봉계산</legend>
											<!-- 입력 -->
											<div class="input_box">
												<table summary="연봉계산 테이블">
													<caption>수치 입력</caption>
													<colgroup>
														<col width="123" />
														<col width="191" />
														<col width="123" />
														<col width="125" />
													</colgroup>
													<tr>
														<th scope="row"><span class="p01">선택</span></th>
														<td>
															<ul class="ul01">
																<li><input type="radio" id="annual_salary" name="salary_type" value="annual" checked="checked" /><label for="annual_salary">연봉</label></li>
																<li class="end"><input type="radio" id="monthly_salary" name="salary_type" value="monthly" /><label for="monthly_salary">월급</label></li>
															</ul>
														</td>
														<th scope="row"><span class="p02">부양가족수<a href="#" onclick="fn_disp_tip(1);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></span></th>
														<td><input type="text" id="dependency" name="dependency" style="width:45px;" class="i_style02" value="1" maxlength="7" onkeyup="fn_chk_dependency(this);fn_set_commval(this);" /> 명 <span class="f11">(본인포함)</span></td>
													</tr>
													<tr>
														<th scope="row"><span class="p01">퇴직금</span></th>
														<td id="tr_retiring">
															<ul class="ul01">
																<li><input type="radio" id="rg01" name="retiring_type" checked="checked" /><label for="rg01">별도</label></li>
																<li class="end"><input type="radio" id="rg02" name="retiring_type" /><label for="rg02">포함</label></li>
															</ul>
															<span style="display:none;">연봉인 경우만 선택</span>
														</td>
														<th scope="row"><span class="p02">20세이하 자녀수<a href="#" onclick="fn_disp_tip(2);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></span></th>
														<td>
															<ul class="ul02">
																<li><input type="radio" id="children01" value="0" name="underage_children" checked="checked" disabled /><label for="children01">없음</label></li>
																<li><input type="radio" id="children02" value="1" name="underage_children" disabled /><label for="children02">1명</label></li>
																<li><input type="radio" id="children03" value="2" name="underage_children" disabled /><label for="children03">2명<span>↑</span></label></li>
															</ul>
														</td>
													</tr>
													<tr class="dot_none">
														<th scope="row"><span class="p01">비과세액<a href="#" onclick="fn_disp_tip(0);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></span></th>
														<td>
															<p><input type="text" id="tax_free" name="tax_free" style="width:98px" class="i_style01" value="100,000" onkeyup="fn_set_commval(this);return fn_chk_numeric_Salary(this);" /> 원</p>
															<p class="side_input"><input type="checkbox" id="di" name="di" onclick="fn_toggle_input('#tax_free',this.checked);" /><label for="di">직접입력</label></p>
														</td>
														<th scope="row"><span class="p02" id="salary_type_text">연봉입력</span></th>
														<td>
															<p><!--input type="text" id="income_salary" name="income_salary" style="width:96px;" class="i_style03" onkeyup="fn_set_commval(this);fn_disp_korean(this,'korean_num');" /-->
					                                        <input type="text" id="income_salary" name="income_salary" style="width:96px;" class="i_style03" onkeyup="fn_set_commval(this);fn_disp_korean(this,'korean_num');" /> 원</p>
															<p class="side_input02"><span id="korean_num"></span> 원</p>
														</td>
													</tr>
												</table>
											</div>
											<!--  // 입력 -->
					
											<p class="go_result"><img src="http://image.career.co.kr/career_new/tools/btn_to_calculate.gif" alt="계산하기" style="cursor:pointer;" onclick="fn_calculate()" /><span><img src="http://image.career.co.kr/career_new/tools/btn_re_calculate.gif" alt="다시 계산하기" style="cursor:pointer;" onclick="fn_reset();" /></span></p>
					
											<!-- 결과 -->
											<div class="result_box">
												<table summary="결과표 테이블">
													<caption>결과값</caption>
													<colgroup>
														<col width="103" />
														<col width="209" />
														<col width="103" />
														<col width="143" />
													</colgroup>
													<tr>
														<th>국민연금<a href="#" onclick="fn_disp_tip(3);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></th>
														<td><input type="text" id="national_pension" class="i_style04" style="width:114px;" readonly /> 원</td>
														<th>소득세<a href="#" onclick="fn_disp_tip(7);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></th>
														<td><input type="text" id="income_tax" class="i_style04" style="width:114px;" readonly /> 원</td>
													</tr>
													<tr>
														<th>건강보험<a href="#" onclick="fn_disp_tip(4);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></th>
														<td><input type="text" id="health_insurance" class="i_style04" style="width:114px;" readonly /> 원</td>
														<th>주민세<a href="#" onclick="fn_disp_tip(8);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></th>
														<td><input type="text" id="inhabitants_tax" class="i_style04" style="width:114px;" readonly /> 원</td>
													</tr>
													<tr>
														<th>장기요양<a href="#" onclick="fn_disp_tip(5);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></th>
														<td><input type="text" id="longterm_insurance" class="i_style04" style="width:114px;" readonly /> 원</td>
														<th>공제액 합계</th>
														<td><input type="text" id="total_exemption" class="i_style04" style="width:114px;" readonly /> 원</td>
													</tr>
													<tr>
														<th>고용보험<a href="#" onclick="fn_disp_tip(6);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a></th>
														<td><input type="text" id="unemployment_insurance" class="i_style04" style="width:114px;" readonly /> 원</td>
														<th></th>
														<td></td>
													</tr>
												</table>
											</div>
											<!-- // 결과 -->
					
											<!-- 실 수령액 -->
											<p class="all_pay"><img src="http://image.career.co.kr/career_new/tools/img_result_t.gif" alt="예상 실 수령액(월) :" /> <a href="#" onclick="fn_disp_tip(9);return false;"><img src="http://image.career.co.kr/career_new/tools/icon_tip.gif" alt="?" /></a><strong id="expected_receipt">0</strong><img src="http://image.career.co.kr/career_new/tools/img_won.gif" alt="원" /></p>
											<!-- // 실 수령액 -->
										</fieldset>
									</div>
					
									<!-- // contents_box -->
							
								<hr />
									<!-- 용어 설명 -->
									<div class="terminology">
										<h4><img src="http://image.career.co.kr/career_new/tools/tt_terminology.gif" alt="용어설명" /></h4>
										<dl class="default">
											<dt>비과세액</dt>
											<dd class="one">급여액 중 세금을 공제하지 않는 금액을 말합니다. 커리어 실 급여 계산기는 기본으로 식대 10만원이 <br />
												설정되어있으며, 비과세액을 정확히 알고 계신 경우, 직접 입력이 가능합니다.</dd>
											<dd>비과세되는 식사대, 출산.보육수당, 실비변상적인 급여, 국외근로소득, 생산직근로자 등의 야근근로수당,<br />
												외국인 근로자에 대한 과세특례, 기타 비과세 되는 소득등이 이에 해당합니다.</dd>
										</dl>
										<dl class="default">
											<dt>부양가족수</dt>
											<dd>공제 대상자(본인포함)에 해당하는 부양하는 가족의 수를 1이상 입력합니다.<br />
												단, 연간 소득금액이 100만원을 초과하는 경우에는 해당되지 않습니다.</dd>
										</dl>
										<dl class="default">
											<dt>20세이하<br />자녀수</dt>
											<dd>기본공제 대상자에 해당하는 20세 이하의 자녀수를 선택하시면 됩니다.<br />
												단, 20세 이하의 자녀이더라도 연간 소득금액이 100만원을 초과하는 경우에는 해당되지 않습니다.</dd>
										</dl>
										<dl class="default">
											<dt>국민연금</dt>
											<dd>국민연금은 사업주, 근로자 모두 4.5%를 공제합니다.<br />
												단, 비과세액이 있을 경우, 비과세액을 제외한 과세금액에서만 세액이 공제됩니다.</dd>
										</dl>
										<dl class="default">
											<dt>건강보험</dt>
											<dd>건강보험료는 3.035% 공제합니다. <br />
												단, 비과세액이 있을 경우, 비과세액을 제외한 과세금액에서만 세액이 공제됩니다.</dd>
										</dl>
										<dl class="default">
											<dt>장기요양</dt>
											<dd>장기요양보험은 건강보험 금액의 6.55%를 공제합니다.</dd>
										</dl>
										<dl class="default">
											<dt>고용보험</dt>
											<dd>고용보험은 사업주 0.70%, 근로자 0.65%로 책정되어있으며, 월 급여액의 0.65%를 공제합니다. </dd>
										</dl>
										<dl class="default">
											<dt>소득세</dt>
											<dd>부양가족수와 20세이하 자녀수에 따라,<br />국세청의 근로소득 간이세액표 자료를 기준으로 공제됩니다.</dd>
										</dl>
										<dl class="default">
											<dt>주민세</dt>
											<dd>소득세의 10%를 공제합니다.</dd>
										</dl>
										<dl class="default">
											<dt>예상<br />실수령액 </dt>
											<dd>월 급여액에서 공제액 합계를 제외한 금액입니다.</dd>
										</dl>
										<p class="payadd_txt"><img src="http://image.career.co.kr/career_new/tools/img_payadd_txt.gif" alt="※ 커리어 연봉계산기는 범용적인 기준으로 만들어졌으나, 각 지급 조건과 상황에 따라 약간의 오차가 발생할 수 있습니다." /></p>
									</div>
									<!-- // 용어 설명 -->
								
							
								
								
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