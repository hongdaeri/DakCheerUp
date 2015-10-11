<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-write" class="panel panel-inverse" data-sortable-id="ui-widget-14">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">저술내역</h4>
        </div>
        <div class="panel-body">
          <form id="resume-write-form" name="write" class="form-horizontal" action="/resume/write" method="POST">
            <div class="table-responsive">
              <table id="writeTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td class="width-50">
                    <a href="javascript:add_write();"><i class="ion-plus-round fa fa-lg text-success"></i></a>
                  </td>
                  <td class="width-100">발행(게재)일</td>
                  <td class="width-130">분류</td>
                  <td>저술명</td>
                  <td class="width-250">발행(게재)처</td>
                </tr>
                <c:choose>
                	<c:when test="${empty writeList}">
		                <tr>
		                  <td>
		                    <a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
		                  </td>
		                  <td>
		                    <input name="newWriteDate" type="text" class="form-control input-sm masked-input-yyyy-mm"/>
		                  </td>
		                  <td>
		                    <select name="newWriteSection" class="form-control input-sm">
		                      <option value="NIL" selected>-- 선택 --</option>
		                      <option value="도서">도서</option>
		                      <option value="논문">논문</option>
		                      <option value="투고">투고</option>
		                      <option value="보도자료">보도자료</option>
		                      <option value="발표문서">발표문서</option>
		                    </select>
		                  </td>
		                  <td>
		                    <input name="newWriteName" maxlength="30" type="text" class="form-control input-sm"/>
		                  </td>
		                  <td>
		                    <input name="newWriteOrg" maxlength="20" type="text" class="form-control input-sm"/>
		                  </td>
		                </tr>
		 			</c:when>
		 			<c:when test="${not empty writeList}">
		 				<c:forEach items="${writeList}" var="write">
			                <tr>
			                  <td>
			                    <a href="/resume/write/delWrite?writeNo=${write.writeNo}" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
			                  </td>
			                  <td>
			                  	<input name="writeNo" value="${write.writeNo}" type="hidden"/>
			                    <input name="writeDate" value="${write.writeDate}" type="text" class="form-control input-sm masked-input-yyyy-mm"/>
			                  </td>
			                  <td>
			                    <select name="writeSection" class="form-control input-sm">
			                      <option value="NIL" <c:if test="${write.writeSection eq 'NIL'}">selected</c:if>>-- 선택 --</option>
			                      <option value="도서" <c:if test="${write.writeSection eq '도서'}">selected</c:if>>도서</option>
			                      <option value="논문" <c:if test="${write.writeSection eq '논문'}">selected</c:if>>논문</option>
			                      <option value="투고" <c:if test="${write.writeSection eq '투고'}">selected</c:if>>투고</option>
			                      <option value="보도자료" <c:if test="${write.writeSection eq '보도자료'}">selected</c:if>>보도자료</option>
			                      <option value="발표문서" <c:if test="${write.writeSection eq '발표문서'}">selected</c:if>>발표문서</option>
			                    </select>
			                  </td>
			                  <td>
			                    <input name="writeName" value="${write.writeName}" maxlength="30" type="text" class="form-control input-sm"/>
			                  </td>
			                  <td>
			                    <input name="writeOrg" value="${write.writeOrg}" maxlength="20" type="text" class="form-control input-sm"/>
			                  </td>
			                </tr>
						</c:forEach>
		 			</c:when>
		        </c:choose>
                </tbody>
              </table>
            </div>

            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-write-form').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />