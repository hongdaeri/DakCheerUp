<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-project" class="panel panel-inverse" data-sortable-id="ui-widget-13">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">참여 프로젝트</h4>
        </div>
        <div class="panel-body">
          <form id="resume-project-form" name="project" class="form-horizontal" action="/resume/project" method="POST">
            <div class="table-responsive">
              <table id="projectTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td class="width-50">
                    <a href="javascript:add_project();"><i class="ion-plus-round fa fa-lg text-success"></i></a>
                  </td>
                  <td class="width-150">프로젝트 기간</td>
                  <td class="width-150">구분</td>
                  <td>프로젝트명</td>
                </tr>
                <c:choose>
               		<c:when test="${empty projectList}">
		                <tr>
		                  <td rowspan="2">
		                    <a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
		                  </td>
		                  <td>
		                    <input name="newProjectPeriod" type="text" class="form-control input-sm masked-input-period"/>
		                  </td>
		                  <td>
		                    <select name="newProjectSection" class="form-control input-sm">
		                      <option value="NIL" selected>-- 선택 --</option>
		                      <option value="공동">공동</option>
		                      <option value="개인">개인</option>
		                    </select>
		                  </td>
		                  <td>
		                    <input name="newProjectName" maxlength="30" type="text" class="form-control input-sm"/>
		                  </td>
		                </tr>
		                <tr>
		                  <td class="warning">상세 내용</td>
		                  <td colspan="2">
							<textarea name="newProjectContext" class="textarea form-control noresize" rows="9">
&#8734; 자유롭게 기술하세요. 아래는 예시 입니다.
&#8734; IT 프로젝트였다면 사용 언어,기술, DBMS, OS 등을 언급 해 주시는 것이 좋습니다.
1) 소속업체 :
2) 의뢰업체 :
3) 목표 :
4) 구성원 :
5) 참여도 :
6) 담당업무 :
7) 주요실적 : 					</textarea>
		                  </td>
		                </tr>				
					</c:when>
					<c:when test="${not empty projectList}">
						<c:forEach items="${projectList}" var="project">
			             	<tr>
			                  <td rowspan="2">
			                    <a href="/resume/project/delProject?projectNo=${project.projectNo}" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
			                  </td>
			                  <td>
			                  	<input name="projectNo" value="${project.projectNo}" type="hidden"/>
			                    <input name="projectPeriod" value="${project.projectPeriod}" type="text" class="form-control input-sm masked-input-period"/>
			                  </td>
			                  <td>
			                    <select name="projectSection" class="form-control input-sm">
			                      <option value="NIL" <c:if test="${project.projectSection eq 'NIL'}">selected</c:if>>-- 선택 --</option>
			                      <option value="공동" <c:if test="${project.projectSection eq '공동'}">selected</c:if>>공동</option>
			                      <option value="개인" <c:if test="${project.projectSection eq '개인'}">selected</c:if>>개인</option>
			                    </select>
			                  </td>
			                  <td>
			                    <input name="projectName" value="${project.projectName}" maxlength="30" type="text" class="form-control input-sm"/>
			                  </td>
			                </tr>
			                <tr>
			                  <td class="warning">상세 내용</td>
			                  <td colspan="2">
								<textarea name="projectContext" class="textarea form-control noresize" rows="9">
${project.projectContext}
								</textarea>
			                  </td>
			                </tr>	
			        	</c:forEach>				
					</c:when>					
				</c:choose>
                </tbody>
              </table>
            </div>

            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-project-form').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />