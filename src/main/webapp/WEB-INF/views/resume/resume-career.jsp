<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-career" class="panel panel-inverse" data-sortable-id="ui-widget-10">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">경력 및 실습사항 </h4>
        </div>
        <div class="panel-body">
          <form id="resume-career-form" name="career" class="form-horizontal" action="/resume/career" method="POST">
            <div class="table-responsive">
              <table id="careerTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td class="width-50">
                    <a href="javascript:add_career();"><i class="ion-plus-round fa fa-lg text-success"></i></a>
                  </td>
                  <td class="width-150">기간</td>
                  <td>회사명</td>
                  <td>부서</td>
                  <td>직위</td>
                  <td>담당업무</td>
                </tr>
                <c:choose>
                	<c:when test="${empty careerList}">
		                <tr>                  
		                  <td>
		                    <a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
		                  </td>
		                  <td>
		                    <input name="newCareerPeriod" type="text" class="form-control input-sm masked-input-period"/>
		                  </td>
		                  <td>
		                    <input name="newCareerCompany" type="text"  maxlength="15"  class="form-control input-sm"/>
		                  </td>
		                  <td>
		                    <input name="newCareerPost" type="text" maxlength="15"  class="form-control input-sm"/>
		                  </td>
		                  <td>
		                    <input name="newCareerPosition" type="text" maxlength="15"  class="form-control input-sm"/>
		                  </td>
		                  <td>
		                    <input name="newCareerWork" type="text" maxlength="15" class="form-control input-sm"/>
		                  </td>
		                </tr>
	                </c:when>
	                <c:when test="${not empty careerList}">
	                	<c:forEach items="${careerList}" var="career">
			                <tr>                  
			                  <td>
			                    <a href="/resume/career/delCareer?careerNo=${career.careerNo}" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
			                  </td>
			                  <td>
			                  	<input name="careerNo" value="${career.careerNo}" type="hidden" />
			                    <input name="careerPeriod" value="${career.careerPeriod}" type="text" class="form-control input-sm masked-input-period"/>
			                  </td>
			                  <td>
			                    <input name="careerCompany"  value="${career.careerCompany}" maxlength="15" type="text" class="form-control input-sm"/>
			                  </td>
			                  <td>
			                    <input name="careerPost"  value="${career.careerPost}" maxlength="15" type="text" class="form-control input-sm"/>
			                  </td>
			                  <td>
			                    <input name="careerPosition"  value="${career.careerPosition}" maxlength="15" type="text" class="form-control input-sm"/>
			                  </td>
			                  <td>
			                    <input name="careerWork"  value="${career.careerWork}" maxlength="15" type="text" class="form-control input-sm"/>
			                  </td>
			                </tr>
		                </c:forEach>
	                </c:when>
                </c:choose>
                </tbody>
              </table>
            </div>

            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-career-form').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />