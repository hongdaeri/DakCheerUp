<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="false" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div id="resume-lang-ability" class="panel panel-inverse" data-sortable-id="ui-widget-7">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">어학능력</h4>
        </div>
        <div class="panel-body">
          <form id="resume-lang-ability-form" class="form-horizontal" name="languageAbility" action="/resume/lang-ability" method="POST">
            <div class="table-responsive">
              <table id="langAbilityTbl" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td>
                    <a href="javascript:add_LangAbilityRow();"><i class="ion-plus-round fa fa-lg text-success"></i></a>
                  </td>
                  <td>언어</td>
                  <td>회화능력</td>
                  <td>작문능력</td>
                  <td>독해능력</td>
                </tr>
                <c:choose>
	                <c:when test="${empty languageAbilityList}">
		                <tr>
		                  <td>
		                    <a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
		                  </td>
		                  <td>
		                    <select class="form-control input-sm" name="newLangAbilityName">
		                      <option value="NIL" selected>-- 언어선택 --</option>
		                      <option value="한국어">한국어</option>
		                      <option value="영어">영어</option>
		                      <option value="일본어">일본어</option>
		                      <option value="중국어">중국어</option>
		                      <option value="불어">불어</option>
		                      <option value="스페인어">스페인어</option>
		                      <option value="러시아어">러시아어</option>
		                      <option value="광동어">광동어</option>
		                      <option value="네덜란드어">네덜란드어</option>
		                      <option value="네팔어">네팔어</option>
		                      <option value="노르웨이어">노르웨이어</option>
		                      <option value="따갈로그어">따갈로그어</option>
		                      <option value="라오스어">라오스어</option>
		                      <option value="라오어">라오어</option>
		                      <option value="루마니아어">루마니아어</option>
		                      <option value="말레이인니어">말레이인니어</option>
		                      <option value="몽골어">몽골어</option>
		                      <option value="미얀마어">미얀마어</option>
		                      <option value="베트남어">베트남어</option>
		                      <option value="벵갈어">벵갈어</option>
		                      <option value="세르비아어">세르비아어</option>
		                      <option value="스와힐리어">스와힐리어</option>
		                      <option value="스웨덴어">스웨덴어</option>
		                      <option value="슬로바키아어">슬로바키아어</option>
		                      <option value="슬로베니아어">슬로베니아어</option>
		                      <option value="아랍어">아랍어</option>
		                      <option value="우루두어">우루두어</option>
		                      <option value="우즈벡어">우즈벡어</option>
		                      <option value="이란어">이란어</option>
		                      <option value="이탈리아어">이탈리아어</option>
		                      <option value="인니어">인니어</option>
		                      <option value="인도네시아어">인도네시아어</option>
		                      <option value="인도어">인도어</option>
		                      <option value="체코어">체코어</option>
		                      <option value="카자흐어">카자흐어</option>
		                      <option value="캄보디아어">캄보디아어</option>
		                      <option value="크로아티아어">크로아티아어</option>
		                      <option value="타갈로그어">타갈로그어</option>
		                      <option value="태국어">태국어</option>
		                      <option value="터키어">터키어</option>
		                      <option value="페르시아어">페르시아어</option>
		                      <option value="포르투갈어">포르투갈어</option>
		                      <option value="폴란드어">폴란드어</option>
		                      <option value="필리핀어">필리핀어</option>
		                      <option value="헝가리어">헝가리어</option>
		                      <option value="희랍어">희랍어</option>
		                      <option value="힌디어">힌디어</option>
		                      <option value="기타">기타</option>
		                    </select>
		                  </td>
		                  <td>
		                    <select class="form-control input-sm" name="newLangAbilityConversation">
		                      <option value="NIL" selected>-- 회화능력 --</option>
		                      <option value="상">상</option>
		                      <option value="중">중</option>
		                      <option value="하">하</option>
		                    </select>
		                  </td>
		                  <td>
		                    <select class="form-control input-sm" name="newLangAbilityComposition">
		                      <option value="NIL" selected>-- 작문능력 --</option>
		                      <option value="상">상</option>
		                      <option value="중">중</option>
		                      <option value="하">하</option>
		                    </select>
		                  </td>
		                  <td>
		                    <select class="form-control input-sm" name="newLangAbilityReading">
		                      <option value="NIL" selected>-- 독해능력 --</option>
		                      <option value="상">상</option>
		                      <option value="중">중</option>
		                      <option value="하">하</option>
		                    </select>
		                  </td>
		                </tr>
                	</c:when>
                	<c:when test="${not empty languageAbilityList}">
                		<c:forEach items="${languageAbilityList}" var="langAbility">
			                <tr>
			                  <td>
			                  	<input name="langAbilityNo" type="hidden" value="${langAbility.langAbilityNo }"/>
			                    <a href="/resume/lang-ability/delLangAbility?langAbilityNo=${langAbility.langAbilityNo}" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>
			                  </td>
			                  <td>
			                    <select class="form-control input-sm" name="langAbilityName">			                 
			                      <option value="NIL" 		<c:if test="${langAbility.langAbilityName eq 'NIL'}">selected</c:if>>-- 언어선택 --</option>
			                      <option value="한국어" 		<c:if test="${langAbility.langAbilityName eq '한국어'}">selected</c:if>>한국어</option>
			                      <option value="영어" 		<c:if test="${langAbility.langAbilityName eq '영어'}">selected</c:if>>영어</option>
			                      <option value="일본어" 		<c:if test="${langAbility.langAbilityName eq '일본어'}">selected</c:if>>일본어</option>
			                      <option value="중국어" 		<c:if test="${langAbility.langAbilityName eq '중국어'}">selected</c:if>>중국어</option>
			                      <option value="불어" 		<c:if test="${langAbility.langAbilityName eq '불어'}">selected</c:if>>불어</option>
			                      <option value="스페인어" 	<c:if test="${langAbility.langAbilityName eq '스페인어'}">selected</c:if>>스페인어</option>
			                      <option value="러시아어" 	<c:if test="${langAbility.langAbilityName eq '러시아어'}">selected</c:if>>러시아어</option>
			                      <option value="광동어" 		<c:if test="${langAbility.langAbilityName eq '광동어'}">selected</c:if>>광동어</option>
			                      <option value="네덜란드어" 	<c:if test="${langAbility.langAbilityName eq '네덜란드어'}">selected</c:if>>네덜란드어</option>
			                      <option value="네팔어" 		<c:if test="${langAbility.langAbilityName eq '네팔어'}">selected</c:if>>네팔어</option>
			                      <option value="노르웨이어" 	<c:if test="${langAbility.langAbilityName eq '노르웨이어'}">selected</c:if>>노르웨이어</option>
			                      <option value="따갈로그어" 	<c:if test="${langAbility.langAbilityName eq '따갈로그어'}">selected</c:if>>따갈로그어</option>
			                      <option value="라오스어" 	<c:if test="${langAbility.langAbilityName eq '라오스어'}">selected</c:if>>라오스어</option>
			                      <option value="라오어" 		<c:if test="${langAbility.langAbilityName eq '라오어'}">selected</c:if>>라오어</option>
			                      <option value="루마니아어" 	<c:if test="${langAbility.langAbilityName eq '루마니아어'}">selected</c:if>>루마니아어</option>
			                      <option value="말레이인니어" 	<c:if test="${langAbility.langAbilityName eq '말레이인니어'}">selected</c:if>>말레이인니어</option>
			                      <option value="몽골어" 		<c:if test="${langAbility.langAbilityName eq '몽골어'}">selected</c:if>>몽골어</option>
			                      <option value="미얀마어" 	<c:if test="${langAbility.langAbilityName eq '미얀마어'}">selected</c:if>>미얀마어</option>
			                      <option value="베트남어" 	<c:if test="${langAbility.langAbilityName eq '베트남어'}">selected</c:if>>베트남어</option>
			                      <option value="벵갈어" 		<c:if test="${langAbility.langAbilityName eq '벵갈어'}">selected</c:if>>벵갈어</option>
			                      <option value="세르비아어" 	<c:if test="${langAbility.langAbilityName eq '세르비아어'}">selected</c:if>>세르비아어</option>
			                      <option value="스와힐리어" 	<c:if test="${langAbility.langAbilityName eq '스와힐리어'}">selected</c:if>>스와힐리어</option>
			                      <option value="스웨덴어" 	<c:if test="${langAbility.langAbilityName eq '스웨덴어'}">selected</c:if>>스웨덴어</option>
			                      <option value="슬로바키아어" 	<c:if test="${langAbility.langAbilityName eq '슬로바키아어'}">selected</c:if>>슬로바키아어</option>
			                      <option value="슬로베니아어" 	<c:if test="${langAbility.langAbilityName eq '슬로베니아어'}">selected</c:if>>슬로베니아어</option>
			                      <option value="아랍어" 		<c:if test="${langAbility.langAbilityName eq '아랍어'}">selected</c:if>>아랍어</option>
			                      <option value="우루두어"		<c:if test="${langAbility.langAbilityName eq '우루두어'}">selected</c:if>>우루두어</option>
			                      <option value="우즈벡어" 	<c:if test="${langAbility.langAbilityName eq '우즈벡어'}">selected</c:if>>우즈벡어</option>
			                      <option value="이란어" 		<c:if test="${langAbility.langAbilityName eq '이란어'}">selected</c:if>>이란어</option>
			                      <option value="이탈리아어" 	<c:if test="${langAbility.langAbilityName eq '이탈리아어'}">selected</c:if>>이탈리아어</option>
			                      <option value="인니어" 		<c:if test="${langAbility.langAbilityName eq '인니어'}">selected</c:if>>인니어</option>
			                      <option value="인도네시아어"	<c:if test="${langAbility.langAbilityName eq '인도네시아어'}">selected</c:if>>인도네시아어</option>
			                      <option value="인도어"		<c:if test="${langAbility.langAbilityName eq '인도어'}">selected</c:if>>인도어</option>
			                      <option value="체코어"		<c:if test="${langAbility.langAbilityName eq '체코어'}">selected</c:if>>체코어</option>
			                      <option value="카자흐어"		<c:if test="${langAbility.langAbilityName eq '카자흐어'}">selected</c:if>>카자흐어</option>
			                      <option value="캄보디아어"	<c:if test="${langAbility.langAbilityName eq '캄보디아어'}">selected</c:if>>캄보디아어</option>
			                      <option value="크로아티아어"	<c:if test="${langAbility.langAbilityName eq '크로아티아어'}">selected</c:if>>크로아티아어</option>
			                      <option value="타갈로그어"	<c:if test="${langAbility.langAbilityName eq '타갈로그어'}">selected</c:if>>타갈로그어</option>
			                      <option value="태국어"		<c:if test="${langAbility.langAbilityName eq '태국어'}">selected</c:if>>태국어</option>
			                      <option value="터키어"		<c:if test="${langAbility.langAbilityName eq '터키어'}">selected</c:if>>터키어</option>
			                      <option value="페르시아어"	<c:if test="${langAbility.langAbilityName eq '페르시아어'}">selected</c:if>>페르시아어</option>
			                      <option value="포르투갈어"	<c:if test="${langAbility.langAbilityName eq '포르투갈어'}">selected</c:if>>포르투갈어</option>
			                      <option value="폴란드어"		<c:if test="${langAbility.langAbilityName eq '폴란드어'}">selected</c:if>>폴란드어</option>
			                      <option value="필리핀어"		<c:if test="${langAbility.langAbilityName eq '필리핀어'}">selected</c:if>>필리핀어</option>
			                      <option value="헝가리어"		<c:if test="${langAbility.langAbilityName eq '헝가리어'}">selected</c:if>>헝가리어</option>
			                      <option value="희랍어"		<c:if test="${langAbility.langAbilityName eq '희랍어'}">selected</c:if>>희랍어</option>
			                      <option value="힌디어"		<c:if test="${langAbility.langAbilityName eq '힌디어'}">selected</c:if>>힌디어</option>
			                      <option value="기타"		<c:if test="${langAbility.langAbilityName eq '기타'}">selected</c:if>>기타</option>
			                    </select>
			                  </td>
			                  <td>
			                    <select class="form-control input-sm" name="langAbilityConversation">
			                      <option value="NIL" 	<c:if test="${langAbility.langAbilityConversation eq 'NIL'}">selected</c:if>>-- 회화능력 --</option>
			                      <option value="상" 	<c:if test="${langAbility.langAbilityConversation eq '상'}">selected</c:if>>상</option>
			                      <option value="중" 	<c:if test="${langAbility.langAbilityConversation eq '중'}">selected</c:if>>중</option>
			                      <option value="하" 	<c:if test="${langAbility.langAbilityConversation eq '하'}">selected</c:if>>하</option>
			                    </select>
			                  </td>
			                  <td>
			                    <select class="form-control input-sm" name="langAbilityComposition">
			                      <option value="NIL" 	<c:if test="${langAbility.langAbilityComposition eq 'NIL'}">selected</c:if>>-- 작문능력 --</option>
			                      <option value="상" 	<c:if test="${langAbility.langAbilityComposition eq '상'}">selected</c:if>>상</option>
			                      <option value="중" 	<c:if test="${langAbility.langAbilityComposition eq '중'}">selected</c:if>>중</option>
			                      <option value="하" 	<c:if test="${langAbility.langAbilityComposition eq '하'}">selected</c:if>>하</option>
			                    </select>
			                  </td>
			                  <td>
			                    <select class="form-control input-sm" name="langAbilityReading">
			                      <option value="NIL" 	<c:if test="${langAbility.langAbilityReading eq 'NIL'}">selected</c:if>>-- 독해능력 --</option>
			                      <option value="상" 	<c:if test="${langAbility.langAbilityReading eq '상'}">selected</c:if>>상</option>
			                      <option value="중" 	<c:if test="${langAbility.langAbilityReading eq '중'}">selected</c:if>>중</option>
			                      <option value="하" 	<c:if test="${langAbility.langAbilityReading eq '하'}">selected</c:if>>하</option>
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
              <a href="#" onClick="document.getElementById('resume-lang-ability-form').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />