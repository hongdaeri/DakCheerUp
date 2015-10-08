<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-academic" class="panel panel-inverse" data-sortable-id="ui-widget-3">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">학력사항</h4>
        </div>
        <div class="panel-body">
          <form id="academic" class="form-horizontal" action="/resume/academic" method="POST">
            <h5>고등학교</h5>
            <div class="table-responsive">
              <table  class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td>재학기간</td>
                  <td>소재지</td>
                  <td>학교명</td>
                  <td>전공</td>
                  <td>졸업구분</td>
                </tr>
                <tr>
                  <td>
                    <input type="text" class="form-control input-sm masked-input-period" name="academicHighPeriod" value="${academicHigh.academicHighPeriod}"/>
                  </td>
                  <td>
                    <select class="form-control input-sm" name="academicHighArea">
                      <option value="NIL" <c:if test="${academicHigh.academicHighArea eq 'NIL'}">selected</c:if>>-소재지선택-</option>
                      <option value="서울특별시" <c:if test="${academicHigh.academicHighArea eq '서울특별시'}">selected</c:if>>서울특별시</option>
                      <option value="경기도" <c:if test="${academicHigh.academicHighArea eq '경기도'}">selected</c:if>>경기도</option>
                      <option value="강원도" <c:if test="${academicHigh.academicHighArea eq '강원도'}">selected</c:if>>강원도</option>
                      <option value="충청북도" <c:if test="${academicHigh.academicHighArea eq '충청북도'}">selected</c:if>>충청북도</option>
                      <option value="충청남도" <c:if test="${academicHigh.academicHighArea eq '충청남도'}">selected</c:if>>충청남도</option>
                      <option value="전라남도" <c:if test="${academicHigh.academicHighArea eq '전라남도'}">selected</c:if>>전라남도</option>
                      <option value="전라북도" <c:if test="${academicHigh.academicHighArea eq '전라북도'}">selected</c:if>>전라북도</option>
                      <option value="걍싱남도" <c:if test="${academicHigh.academicHighArea eq '경상남도'}">selected</c:if>>경상남도</option>
                      <option value="경상북도" <c:if test="${academicHigh.academicHighArea eq '경상북도'}">selected</c:if>>경상북도</option>
                      <option value="제주도" <c:if test="${academicHigh.academicHighArea eq '제주도'}">selected</c:if>>제주도</option>
                      <option value="울산광역시" <c:if test="${academicHigh.academicHighArea eq '울산광역시'}">selected</c:if>>울산광역시</option>
                      <option value="대전광역시" <c:if test="${academicHigh.academicHighArea eq '대전광역시'}">selected</c:if>>대전광역시</option>
                      <option value="인천광역시" <c:if test="${academicHigh.academicHighArea eq '인천광역시'}">selected</c:if>>인천광역시</option>
                      <option value="광주광역시" <c:if test="${academicHigh.academicHighArea eq '광주광역시'}">selected</c:if>>광주광역시</option>
                      <option value="대구광역시" <c:if test="${academicHigh.academicHighArea eq '대구광역시'}">selected</c:if>>대구광역시</option>
                      <option value="부산광역시" <c:if test="${academicHigh.academicHighArea eq '부산광역시'}">selected</c:if>>부산광역시</option>
                      <option value="아시아" <c:if test="${academicHigh.academicHighArea eq '아시아'}">selected</c:if>>아시아</option>
                      <option value="유럽" <c:if test="${academicHigh.academicHighArea eq '유럽'}">selected</c:if>>유럽</option>
                      <option value="아메리카" <c:if test="${academicHigh.academicHighArea eq '아메리카'}">selected</c:if>>아메리카</option>
                      <option value="아프리카" <c:if test="${academicHigh.academicHighArea eq '아프리카'}">selected</c:if>>아프리카</option>
                      <option value="오세아니아" <c:if test="${academicHigh.academicHighArea eq '오세아니아'}">selected</c:if>>오세아니아</option>
                    </select>
                  </td>
                  <td><input type="text" class="form-control input-sm" name="academicHighName" value="${academicHigh.academicHighPeriod}"/></td>

                  <td><input type="text" class="form-control input-sm" name="academicHighMajor" value="${academicHigh.academicHighPeriod}"/></td>
                  <td>
                    <select class="form-control input-sm" name="academicHighSection">
                      <option value="NIL" <c:if test="${academicHigh.academicHighSection eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="졸업" <c:if test="${academicHigh.academicHighSection eq '졸업'}">selected</c:if>>졸업</option>
                      <option value="중퇴" <c:if test="${academicHigh.academicHighSection eq '중퇴'}">selected</c:if>>중퇴</option>
                    </select>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>

            <table class="width-full">
              <tr>
                <td><h5>대학교</h5></td>
                <td class="text-right p-r-15"><a href="javascript:add_academicUnivRow();"><i class="ion-plus-round fa fa-lg text-success"></i></a></td>
              </tr>
            </table>

            <div class="table-responsive">
              <table id="academicUnivTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                  <c:choose>
                    <c:when test="${empty academicUnivList}">
		                <tr>
		                  <td rowspan="3" class="width-60 warning"><a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a></td>
		                  <td class="warning">재학기간</td>
		                  <td colspan="3">
		                    <div class="row m-0 p-0">
		                      <div class="col-xs-4">
		                        <div class="row">
		                          <div class="col-xs-7 m-0 p-1">
		                          	<input type="text" class="form-control input-sm masked-input-yyyy-mm" name="newAcademicUnivPeriodFirst"/>
		                          </div>
		                          <div class="col-xs-5 m-0 p-1">
		                            <select class="form-control input-sm" name="newAcademicUnivPeriodFirstOption">
		                              <option value="NIL" selected>--선택하세요--</option>
		                              <option value="입학">입학</option>
		                              <option value="편입">편입</option>
		                            </select>
		                          </div>
		                        </div>
		                      </div>
		                      <div class="col-xs-1 p-t-5">~</div>
		                      <div class="col-xs-4">
		                        <div class="row">
		                          <div class="col-xs-7 m-0 p-1"><input type="text" class="form-control input-sm masked-input-yyyy-mm" name="newAcademicUnivPeriodLast"/></div>
		                          <div class="col-xs-5 m-0 p-1">
		                            <select class="form-control input-sm" name="newAcademicUnivPeriodLastOption">
		                              <option value="NIL" selected>--선택하세요--</option>
		                              <option value="졸업">졸업</option>
		                              <option value="재학중">재학중</option>
		                              <option value="휴학중">휴학중</option>
		                              <option value="졸업예정">졸업예정</option>
		                              <option value="중퇴">중퇴</option>
		                              <option value="자퇴">자퇴</option>
		                              <option value="수료">수료</option>
		                            </select>
		                          </div>
		                        </div>
		                      </div>
		                      <div class="col-xs-3">
		                        <select class="form-control input-sm" name="newAcademicUnivDegree">
		                          <option value="NIL" selected>--선택하세요--</option>
		                          <option value="전문학사">전문학사</option>
		                          <option value="학사">학사</option>
		                          <option value="석사">석사</option>
		                          <option value="박사">박사</option>
		                        </select>
		                      </div>
		                    </div>
		                  </td>
		                </tr>
		                <tr>
		                  <td class="warning">학교명</td>
		                  <td class="warning">전공</td>
		                  <td class="warning">학점</td>
		                  <td class="warning">부/복수전공</td>
		                </tr>
		                <tr>
		                  <td><input type="text" class="form-control input-sm" name="newAcademicUnivName" maxlength="25"/></td>
		                  <td><input type="text" class="form-control input-sm" name="newAcademicUnivMajor" maxlength="25"/></td>
		                  <td>
		                    <div class="row">
		                      <div class="col-xs-6">
		                        <input type="text" class="form-control input-sm" name="newAcademicUnivScore" maxlength="5"/>
		                      </div>
		                      <div class="col-xs-6">
		                        <select class="form-control input-sm" name="newAcademicUnivScoreOption">
		                          <option value="NIL" selected>--선택하세요--</option>
		                          <option value="4.0">4.0</option>
		                          <option value="4.3">4.3</option>
		                          <option value="4.5">4.5</option>
		                          <option value="7.0">7.0</option>
		                          <option value="100">100</option>
		                        </select>
		                      </div>
		                    </div>
		                  </td>
		                  <td>
		                    <div class="row">
		                      <div class="col-xs-4">
		                        <select class="form-control input-sm" name="newAcademicUnivDoubleOption">
		                          <option value="NIL" selected>--선택--</option>
		                          <option value="해당없음">해당없음</option>
		                          <option value="부전공">부전공</option>
		                          <option value="복수전공">복수전공</option>
		                          <option value="이중전공">이중전공</option>
		                        </select>
		                      </div>
		                      <div class="col-xs-8">
		                        <input type="text" class="form-control input-sm" name="newAcademicUnivDoubleName" maxlength="25"/>
		                      </div>
		                    </div>
		                  </td>
		                </tr>
	                </c:when>
	                <c:when test="${not empty academicUnivList}">
	                  	<c:forEach items="${academicUnivList}" var="academicUniv">
			                <tr>
			                  <td rowspan="3" class="width-60 warning"><a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle" data-click="resume-delete"><i class="ion-minus-round fa fa-lg text-white"></i></a></td>
			                  <td class="warning">재학기간</td>
			                  <td colspan="3">
			                    <div class="row m-0 p-0">
			                      <div class="col-xs-4">
			                        <div class="row">
			                          <div class="col-xs-7 m-0 p-1">
			                          	<input type="text" class="form-control input-sm masked-input-yyyy-mm" name="academicUnivPeriodFirst" value="${academicUniv.academicUnivPeriodFirst}"/>
			                          </div>
			                          <div class="col-xs-5 m-0 p-1">
			                            <select class="form-control input-sm" name="academicUnivPeriodFirstOption">
			                              <option value="NIL" <c:if test="${academicUniv.academicUnivPeriodFirstOption eq 'NIL'}">selected</c:if>>--선택하세요--</option>
			                              <option value="입학" <c:if test="${academicUniv.academicUnivPeriodFirstOption eq '입학'}">selected</c:if>>입학</option>
			                              <option value="편입" <c:if test="${academicUniv.academicUnivPeriodFirstOption eq '편입'}">selected</c:if>>편입</option>
			                            </select>
			                          </div>
			                        </div>
			                      </div>
			                      <div class="col-xs-1 p-t-5">~</div>
			                      <div class="col-xs-4">
			                        <div class="row">
			                          <div class="col-xs-7 m-0 p-1">
			                          	<input type="text" class="form-control input-sm masked-input-yyyy-mm" name="academicUnivPeriodLast" value="${academicUniv.academicUnivPeriodLast}"/>
			                          </div>
			                          <div class="col-xs-5 m-0 p-1">
			                            <select class="form-control input-sm" name="academicUnivPeriodLastOption">
			                              <option value="NIL"  <c:if test="${academicUniv.academicUnivPeriodLastOption eq 'NIL'}">selected</c:if>>--선택하세요--</option>
			                              <option value="졸업" <c:if test="${academicUniv.academicUnivPeriodLastOption eq '졸업'}">selected</c:if>>졸업</option>
			                              <option value="재학중" <c:if test="${academicUniv.academicUnivPeriodLastOption eq '재학중'}">selected</c:if>>재학중</option>
			                              <option value="휴학중" <c:if test="${academicUniv.academicUnivPeriodLastOption eq '휴학중'}">selected</c:if>>휴학중</option>
			                              <option value="졸업예정" <c:if test="${academicUniv.academicUnivPeriodLastOption eq '졸업예정'}">selected</c:if>>졸업예정</option>
			                              <option value="중퇴" <c:if test="${academicUniv.academicUnivPeriodLastOption eq '중퇴'}">selected</c:if>>중퇴</option>
			                              <option value="자퇴" <c:if test="${academicUniv.academicUnivPeriodLastOption eq '자퇴'}">selected</c:if>>자퇴</option>
			                              <option value="수료" <c:if test="${academicUniv.academicUnivPeriodLastOption eq '수료'}">selected</c:if>>수료</option>
			                            </select>
			                          </div>
			                        </div>
			                      </div>
			                      <div class="col-xs-3">
			                        <select class="form-control input-sm" name="academicUnivDegree">
			                          <option value="NIL"  <c:if test="${academicUniv.academicUnivDegree eq 'NIL'}">selected</c:if>>--선택하세요--</option>
			                          <option value="전문학사" <c:if test="${academicUniv.academicUnivDegree eq '전문학사'}">selected</c:if>>전문학사</option>
			                          <option value="학사" <c:if test="${academicUniv.academicUnivDegree eq '학사'}">selected</c:if>>학사</option>
			                          <option value="석사" <c:if test="${academicUniv.academicUnivDegree eq '석사'}">selected</c:if>>석사</option>
			                          <option value="박사" <c:if test="${academicUniv.academicUnivDegree eq '박사'}">selected</c:if>>박사</option>
			                        </select>
			                      </div>
			                    </div>
			                  </td>
			                </tr>
			                <tr>
			                  <td class="warning">학교명</td>
			                  <td class="warning">전공</td>
			                  <td class="warning">학점</td>
			                  <td class="warning">부/복수전공</td>
			                </tr>
			                <tr>
			                  <td><input type="text" class="form-control input-sm" name="academicUnivName"  value="${academicUniv.academicUnivName}" maxlength="25"/></td>
			                  <td><input type="text" class="form-control input-sm" name="academicUnivMajor"  value="${academicUniv.academicUnivMajor}" maxlength="25"/></td>
			                  <td>
			                    <div class="row">
			                      <div class="col-xs-6">
			                        <input type="text" class="form-control input-sm" name="academicUnivScore"  value="${academicUniv.academicUnivScore}" maxlength="5"/>
			                      </div>
			                      <div class="col-xs-6">
			                        <select class="form-control input-sm" name="academicUnivScoreOption">
			                          <option value="NIL"  <c:if test="${academicUniv.academicUnivScoreOption eq 'NIL'}">selected</c:if>>--선택하세요--</option>
			                          <option value="4.0" <c:if test="${academicUniv.academicUnivScoreOption eq '4.0'}">selected</c:if>>4.0</option>
			                          <option value="4.3" <c:if test="${academicUniv.academicUnivScoreOption eq '4.3'}">selected</c:if>>4.3</option>
			                          <option value="4.5" <c:if test="${academicUniv.academicUnivScoreOption eq '4.5'}">selected</c:if>>4.5</option>
			                          <option value="7.0" <c:if test="${academicUniv.academicUnivScoreOption eq '7.0'}">selected</c:if>>7.0</option>
			                          <option value="100" <c:if test="${academicUniv.academicUnivScoreOption eq '100'}">selected</c:if>>100</option>
			                        </select>
			                      </div>
			                    </div>
			                  </td>
			                  <td>
			                    <div class="row">
			                      <div class="col-xs-4">
			                        <select class="form-control input-sm" name="academicUnivDoubleOption">
			                          <option value="NIL"  <c:if test="${academicUniv.academicUnivDoubleOption eq 'NIL'}">selected</c:if>>--선택--</option>
			                          <option value="해당없음" <c:if test="${academicUniv.academicUnivDoubleOption eq '해당없음'}">selected</c:if>>해당없음</option>
			                          <option value="부전공" <c:if test="${academicUniv.academicUnivDoubleOption eq '부전공'}">selected</c:if>>부전공</option>
			                          <option value="복수전공" <c:if test="${academicUniv.academicUnivDoubleOption eq '복수전공'}">selected</c:if>>복수전공</option>
			                          <option value="이중전공" <c:if test="${academicUniv.academicUnivDoubleOption eq '이중전공'}">selected</c:if>>이중전공</option>
			                        </select>
			                      </div>
			                      <div class="col-xs-8">
			                        <input type="text" class="form-control input-sm" name="academicUnivDoubleName"  value="${academicUniv.academicUnivDoubleName}" maxlength="25"/>
			                      </div>
			                    </div>
			                  </td>
			                </tr>
		              </c:forEach>
	                </c:when>
	              </c:choose>

                </tbody>
              </table>
            </div>
            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('academic').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />