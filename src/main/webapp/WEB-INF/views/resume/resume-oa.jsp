<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="false" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div class="panel panel-inverse" data-sortable-id="ui-widget-4">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">OA 활용능력</h4>
        </div>
        <div class="panel-body">
          <form id="resume-oa" class="form-horizontal" name="oa" action="/resume/oa" method="POST">
            <div class="table-responsive">
              <table class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td>문서작성<br>(한글 / MS-Word)</td>
                  <td>스프레드시트<br>(EXCEL)</td>
                  <td>프리젠테이션(Power Point)<br>(Power Point)</td>
                  <td>인터넷활용<br>(정보검색 / 블로깅)</td>
                  <td>그래픽<br>(Photoshop / Illustrator)</td>
                </tr>
                <tr>
                  <td>
                    <select class="form-control input-sm" name="oaDoc">
                      <option value="NIL" <c:if test="${oa.oaDoc eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="상" <c:if test="${oa.oaDoc eq '상'}">selected</c:if>>상</option>
                      <option value="중" <c:if test="${oa.oaDoc eq '중'}">selected</c:if>>중</option>
                      <option value="하" <c:if test="${oa.oaDoc eq '하'}">selected</c:if>>하</option>                      
                    </select>
                  </td>
                  <td>
                    <select class="form-control input-sm" name="oaExcel">
                      <option value="NIL" <c:if test="${oa.oaExcel eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="상" <c:if test="${oa.oaExcel eq '상'}">selected</c:if>>상</option>
                      <option value="중" <c:if test="${oa.oaExcel eq '중'}">selected</c:if>>중</option>
                      <option value="하" <c:if test="${oa.oaExcel eq '하'}">selected</c:if>>하</option>
                    </select>
                  </td>
                  <td>
                    <select class="form-control input-sm" name="oaPpt">
                      <option value="NIL" <c:if test="${oa.oaPpt eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="상" <c:if test="${oa.oaPpt eq '상'}">selected</c:if>>상</option>
                      <option value="중" <c:if test="${oa.oaPpt eq '중'}">selected</c:if>>중</option>
                      <option value="하" <c:if test="${oa.oaPpt eq '하'}">selected</c:if>>하</option>
                    </select>
                  </td>
                  <td>
                    <select class="form-control input-sm" name="oaInternet">
                      <option value="NIL" <c:if test="${oa.oaInternet eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="상" <c:if test="${oa.oaInternet eq '상'}">selected</c:if>>상</option>
                      <option value="중" <c:if test="${oa.oaInternet eq '중'}">selected</c:if>>중</option>
                      <option value="하" <c:if test="${oa.oaInternet eq '하'}">selected</c:if>>하</option>
                    </select>
                  </td>
                  <td>
                    <select class="form-control input-sm" name="oaGraphic">
                      <option value="NIL" <c:if test="${oa.oaGraphic eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="상" <c:if test="${oa.oaGraphic eq '상'}">selected</c:if>>상</option>
                      <option value="중" <c:if test="${oa.oaGraphic eq '중'}">selected</c:if>>중</option>
                      <option value="하" <c:if test="${oa.oaGraphic eq '하'}">selected</c:if>>하</option>
                    </select>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>

            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-oa').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />