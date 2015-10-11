<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-global" class="panel panel-inverse" data-sortable-id="ui-widget-15">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">글로벌 경험</h4>
        </div>
        <div class="panel-body">
          <form id="resume-global-form" name="global" class="form-horizontal" action="/resume/global" method="POST">
            <div class="table-responsive">
              <table id="globalTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td class="width-50">
                    <a href="javascript:add_global();"><i class="ion-plus-round fa fa-lg text-success"></i></a>
                  </td>
                  <td class="width-160">기간</td>
                  <td class="width-170">국가</td>
                  <td class="width-130">사유(목적)</td>
                  <td>활동내용</td>
                </tr>
                <c:choose>
                	<c:when test="${empty globalList}">
		                <tr>
		                  <td>
		                    <a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
		                  </td>
		                  <td>
		                    <input name="newGlobalPeriod" type="text" class="form-control input-sm masked-input-period"/>
		                  </td>
		                  <td>
		                	<input name="newGlobalNation" type="text" maxlength="10" class="globalNation form-control input-sm">
		                  </td>
		                  <td>
		                    <select name="newGlobalPurpose" class="form-control input-sm">
		                      <option value="NIL" selected>-- 선택 --</option>
		                      <option value="어학연수" >어학연수</option>
		                      <option value="교환학생" >교환학생</option>
		                      <option value="여행" >여행</option>
		                      <option value="거주" >거주</option>
		                      <option value="기타" >기타</option>
		                    </select>
		                  </td>
		                  <td>
		                    <input name="newGlobalContent" type="text" maxlength="50"  class="form-control input-sm"/>
		                  </td>
		                </tr>
                	</c:when>
                	<c:when test="${not empty globalList}">
                		<c:forEach items="${globalList}" var="global">
			            	<tr>
			                  <td>
			                    <a href="/resume/global/delGlobal?globalNo=${global.globalNo}" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
			                  </td>
			                  <td>
			                  	<input name="globalNo" value="${global.globalNo}" type="hidden" />
			                    <input name="globalPeriod" value="${global.globalPeriod}" type="text" class="form-control input-sm masked-input-period"/>
			                  </td>
			                  <td>
			                    <input name="globalNation" value="${global.globalNation}" type="text" maxlength="10" class="globalNation form-control input-sm">
			                  </td>
			                  <td>
			                    <select name="globalPurpose" class="form-control input-sm">
			                      <option value="NIL" <c:if test="${global.globalPurpose eq 'NIL'}">selected</c:if>>-- 선택 --</option>
			                      <option value="어학연수" <c:if test="${global.globalPurpose eq '어학연수'}">selected</c:if>>어학연수</option>
			                      <option value="교환학생" <c:if test="${global.globalPurpose eq '교환학생'}">selected</c:if>>교환학생</option>
			                      <option value="여행" <c:if test="${global.globalPurpose eq '여행'}">selected</c:if>>여행</option>
			                      <option value="거주" <c:if test="${global.globalPurpose eq '거주'}">selected</c:if>>거주</option>
			                      <option value="기타" <c:if test="${global.globalPurpose eq '기타'}">selected</c:if>>기타</option>
			                    </select>
			                  </td>
			                  <td>
			                    <input name="globalContent" value="${global.globalContent}" maxlength="50" type="text" class="form-control input-sm"/>
			                  </td>
			                </tr>
			        	</c:forEach>  
                	</c:when>
                </c:choose>
                </tbody>
              </table>
            </div>

            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-global-form').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />