<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-lang-exam" class="panel panel-inverse" data-sortable-id="ui-widget-8">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">어학시험</h4>
        </div>
        <div class="panel-body">
          <form id="resume-lang-exam-form" name="languageExam" class="form-horizontal" action="/resume/lang-exam" method="POST">
            <div class="table-responsive">
              <table id="langExamTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
	                <tr class="warning">
	                  <td>
	                    <a href="javascript:add_LangExamRow();"><i class="ion-plus-round fa fa-lg text-success"></i></a>
	                  </td>
	                  <td>언어</td>
	                  <td>어학시험</td>
	                  <td>점수(등급)</td>
	                  <td>증빙기관</td>
	                </tr>
	                <c:choose>
		                <c:when test="${empty languageExamList}">
			                <tr>
			                  <td>
			                    <a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
			                  </td>
			                  <td>
			                    <SELECT class="form-control input-sm" name="newLangExamLName" onChange="BuildLangExamOp(this);">
			                      <OPTION Value="NIL">-- 선택 --
			                      <OPTION Value="영어">영어
			                      <OPTION Value="일어">일어
			                      <OPTION Value="중국어">중국어
			                      <OPTION Value="독일어">독일어
			                      <OPTION Value="불어">불어
			                      <OPTION Value="스페인어">스페인어
			                      <OPTION Value="러시아어">러시아어
			                      <OPTION Value="이탈리아어">이탈리아어
			                      <OPTION Value="한국어">한국어
			                      <OPTION Value="한자">한자
			                    </Select>
			                  </td>
			                  <td>
			                    <SELECT class="form-control input-sm LangExamEName" name="newLangExamEName">
			                      <OPTION Value="NIL">-- 선택 --
			                    </Select>
			                  </td>
			                  <td>
			                    <div class="row">
			                      <div class="col-xs-6">
			                        <input name="newLangExamScore" type="text" class="form-control input-sm"/>
			                      </div>
			                      <div class="col-xs-6">
			                        <select  name="newLangExamType" class="form-control input-sm">
			                          <option value="NIL" selected>-- 선택 --</option>
			                          <option value="점">점</option>
			                          <option value="급">급</option>
			                          <option value="Pass">Pass</option>
			                        </select>
			                      </div>
			                    </div>
			                  </td>
			                  <td>
			                    <input name="newLangExamOrg" type="text" class="form-control input-sm"/>
			                  </td>
			                </tr>
			        	</c:when>
			        	<c:when test="${not empty languageExamList}">
			        		<c:forEach items="${languageExamList}" var="langExam">
				                <tr>
				                  <td>
				                    <a href="/resume/lang-exam/delLangExam?langExamNo=${langExam.langExamNo}" class="btn btn-danger btn-icon btn-xs btn-circle" data-click="resume-delete"><i class="ion-minus-round fa fa-lg text-white"></i></a>
				                  </td>
				                  <td>
				                  	<input name="langExamNo" value="${langExam.langExamNo}" type="hidden"/>
				                  	
				                    <SELECT class="form-control input-sm" name="langExamLName" onChange="BuildLangExamOp(this);">
				                      <OPTION Value="NIL" <c:if test="${langExam.langExamLName eq 'NIL'}">selected</c:if>>-- 선택 --
				                      <OPTION Value="영어" <c:if test="${langExam.langExamLName eq '영어'}">selected</c:if>>영어
				                      <OPTION Value="일어" <c:if test="${langExam.langExamLName eq '일어'}">selected</c:if>>일어
				                      <OPTION Value="중국어" <c:if test="${langExam.langExamLName eq '중국어'}">selected</c:if>>중국어
				                      <OPTION Value="독일어" <c:if test="${langExam.langExamLName eq '독일어'}">selected</c:if>>독일어
				                      <OPTION Value="불어" <c:if test="${langExam.langExamLName eq '불어'}">selected</c:if>>불어
				                      <OPTION Value="스페인어" <c:if test="${langExam.langExamLName eq '스페인어'}">selected</c:if>>스페인어
				                      <OPTION Value="러시아어" <c:if test="${langExam.langExamLName eq '러시아어'}">selected</c:if>>러시아어
				                      <OPTION Value="이탈리아어" <c:if test="${langExam.langExamLName eq '이탈리아어'}">selected</c:if>>이탈리아어
				                      <OPTION Value="한국어" <c:if test="${langExam.langExamLName eq '한국어'}">selected</c:if>>한국어
				                      <OPTION Value="한자" <c:if test="${langExam.langExamLName eq '한자'}">selected</c:if>>한자
				                    </Select>
				                  </td>
				                  <td>
				                    <SELECT class="form-control input-sm LangExamEName" name="langExamEName">
				                      <OPTION value="${langExam.langExamEName}"> ${langExam.langExamEName}
				                    </Select>
				                  </td>
				                  <td>
				                    <div class="row">
				                      <div class="col-xs-6">
				                        <input name="langExamScore" value="${langExam.langExamScore}" type="text" class="form-control input-sm"/>
				                      </div>
				                      <div class="col-xs-6">
				                        <select  name="langExamType" class="form-control input-sm">
				                          <option value="NIL" 	<c:if test="${langExam.langExamType eq 'NIL'}">selected</c:if>>-- 선택 --</option>
				                          <option value="점" 	<c:if test="${langExam.langExamType eq '점'}">selected</c:if>>점</option>
				                          <option value="급" 	<c:if test="${langExam.langExamType eq '급'}">selected</c:if>>급</option>
				                          <option value="Pass" 	<c:if test="${langExam.langExamType eq 'Pass'}">selected</c:if>>Pass</option>
				                        </select>
				                      </div>
				                    </div>
				                  </td>
				                  <td>
				                    <input name="langExamOrg"  value="${langExam.langExamOrg}" type="text" class="form-control input-sm"/>
				                  </td>
				                </tr>
				        	</c:forEach>
			        	</c:when>
			        </c:choose>
                </tbody>
              </table>
            </div>

            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-lang-exam-form').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>

<jsp:include page="./config/resume_footer.jsp" flush="false" />