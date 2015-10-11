<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-award" class="panel panel-inverse" data-sortable-id="ui-widget-9">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">수상내역 / 공모전 </h4>
        </div>
        <div class="panel-body">
          <form id="resume-award-form" name="award" class="form-horizontal" action="/resume/award" method="POST">
            <div class="table-responsive">
              <table id="awardTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td class="width-50">
                    <a href="javascript:add_award();"><i class="ion-plus-round fa fa-lg text-success"></i></a>
                  </td>
                  <td class="width-100">수상일</td>
                  <td>수상명</td>
                  <td>수상기관</td>
                  <td class="width-150">작업구분</td>
                </tr>
                <c:choose>
	            	<c:when test="${empty awardList}">
		                <tr>
		                  <td>
		                    <a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
		                  </td>
		                  <td>
		                    <input name="newAwardDate" type="text" class="form-control input-sm masked-input-yyyy-mm"/>
		                  </td>
		                  <td>
		                    <input name="newAwardName" type="text" class="form-control input-sm"/>
		                  </td>
		                  <td>
		                    <input name="newAwardOrg" type="text" class="form-control input-sm"/>
		                  </td>
		                  <td>
		                    <select name="newAwardSection" class="form-control input-sm">
		                      <option value="NIL" selected>-- 선택 --</option>
		                      <option value="공동">공동</option>
		                      <option value="개인">개인</option>
		                    </select>
		                  </td>
		                </tr>
		         	</c:when>
                </c:choose>
                <c:choose>
	            	<c:when test="${not empty awardList}">
	            		<c:forEach items="${awardList}" var="award">
			                <tr>
			                  <td>
			                    <a href="/resume/award/delAward?awardNo=${award.awardNo}" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
			                  </td>
			                  <td>
			                  	<input name="awardNo" value="${award.awardNo }" type="hidden" />
			                    <input name="awardDate" value="${award.awardDate}" type="text" class="form-control input-sm masked-input-yyyy-mm"/>
			                  </td>
			                  <td>
			                    <input name="awardName" value="${award.awardName}" type="text" class="form-control input-sm"/>
			                  </td>
			                  <td>
			                    <input name="awardOrg" value="${award.awardOrg}" type="text" class="form-control input-sm"/>
			                  </td>
			                  <td>
			                    <select name="awardSection" class="form-control input-sm">
			                      <option value="NIL" <c:if test="${award.awardSection eq 'NIL'}">selected</c:if>>-- 선택 --</option>
			                      <option value="공동" <c:if test="${award.awardSection eq '공동'}">selected</c:if>>공동</option>
			                      <option value="개인" <c:if test="${award.awardSection eq '개인'}">selected</c:if>>개인</option>
			                    </select>
			                  </td>
			                </tr>
		                </c:forEach>
		         	</c:when>
                </c:choose>
                </tbody>
              </table>
            </div>
		
            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-award-form').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />