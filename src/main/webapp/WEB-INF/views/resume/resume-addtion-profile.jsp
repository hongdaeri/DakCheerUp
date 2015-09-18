<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="false" data-height="100%" class="m-l-15 m-r-15">
  <div class="row">
    <div class="col-md-12">
      <!-- begin panel -->
      <div class="panel panel-inverse" data-sortable-id="ui-widget-2">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title">추가인적사항</h4>
        </div>
        <div class="panel-body">
          <form id="resume-add-profile" class="form-horizontal" action="/resume/addtion-profile" method="POST">
            <h5>가족관계</h5>
            <div class="table-responsive">
              <table class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr>
                  <td colspan="2" class="warning">형제관계</td>
                  <td colspan="4" class="text-left">
                    <table>
                      <tr>
                        <td class="p-l-10"><input type="text" class="form-control" name="brotherMale" value="${brother.brotherMale}" maxlength="1"/></td>
                        <td class="p-l-10">남 </td>
                        <td class="p-l-10"><input type="text" class="form-control"  name="brotherFemale"value="${brother.brotherFemale}" maxlength="1"/></td>
                        <td class="p-l-10">녀 중 </td>
                        <td class="p-l-10"><input type="text" class="form-control" name="brotherMe" value="${brother.brotherMe}" maxlength="1"/></td>
                        <td class="p-l-10">째</td>
                      </tr>
                    </table>
                  </td>

                </tr>
                <tr class="warning">
                  <td><a href="javascript:" class="" data-click="resume-add"><i class="ion-plus-round fa fa-lg text-success"></i></a></td>
                  <td>관계</td>
                  <td>성명</td>
                  <td>연령</td>
                  <td>현재직업</td>
                  <td>동거여부</td>
                </tr>
                <tr>
                  <td><a href="javascript:" class="btn btn-danger btn-icon btn-xs btn-circle" data-click="resume-delete"><i class="ion-minus-round fa fa-lg text-white"></i></a></td>
                  <td>
                    <select class="form-control input-sm" name="familyRelation">
                      <option value="NIL" <c:if test="${family.familyRelation eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="친할아버지" <c:if test="${family.familyRelation eq '친할아버지'}">selected</c:if>>친할아버지</option>
                      <option value="친할머니" <c:if test="${family.familyRelation eq '친할머니'}">selected</c:if>>친할머니</option>
                      <option value="외할아버지" <c:if test="${family.familyRelation eq '외할아버지'}">selected</c:if>>외할아버지</option>
                      <option value="외할머니 " <c:if test="${family.familyRelation eq '외할머니'}">selected</c:if>>외할머니</option> 
                      <option value="아버지" <c:if test="${family.familyRelation eq '아버지'}">selected</c:if>>아버지</option>
                      <option value="어머니" <c:if test="${family.familyRelation eq '어머니'}">selected</c:if>>어머니</option> 
                      <option value="손위 형제 " <c:if test="${family.familyRelation eq '손위 형제'}">selected</c:if>>손위 형제</option> 
                      <option value="손위 자매" <c:if test="${family.familyRelation eq '손위 자매'}">selected</c:if>>손위 자매</option>
                      <option value="손아래 형제" <c:if test="${family.familyRelation eq '손아래 형제'}">selected</c:if>>손아래 형제</option>
                      <option value="손아래 자매" <c:if test="${family.familyRelation eq '손아래 자매'}">selected</c:if>>손아래 자매</option>                
                    </select>
                  </td>
                  <td>
                  	<input type="text" class="form-control input-sm"  name="familyName" value="${family.familyName}" maxlength="10"/>
                  </td>
                  <td>
                    <input type="text" class="form-control input-sm"  name="familyAge" value="${family.familyAge}" maxlength="3"/>
                  </td>
                  <td><input type="text" class="form-control input-sm"  name="familyJob" value="${family.familyJob}" maxlength="8"/></td>
                  <td>
                    <select class="form-control input-sm" name="familyLive">
                      <option value="NIL" <c:if test="${family.familyLive eq 'NIL'}">selected</c:if>>--선택하세요--</option>
                      <option value="동거" <c:if test="${family.familyLive eq '동거'}">selected</c:if>>동거</option>
                      <option value="비동거" <c:if test="${family.familyLive eq '비동거'}">selected</c:if>>비동거</option>                      
                    </select>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>

            <h5>병역사항</h5>
            <div class="table-responsive">
              <table id="resume-family-table" class="table table-bordered table-condensed table-valign-middle text-center">
                <tbody>
                <tr class="warning">
                  <td>군필여부</td>
                  <td>복무기간</td>
                  <td>군별</td>
                  <td>계급</td>
                  <td>병과</td>
                </tr>
                <tr>
                  <td>
                    <select class="form-control input-sm" name="militarySection">
                      <option value="NIL" <c:if test="${military.militarySection eq 'NIL'}">selected</c:if>>--군필여부선택--</option>
                      <option value="필" <c:if test="${military.militarySection eq '필'}">selected</c:if>>필</option>
                      <option value="미필" <c:if test="${military.militarySection eq '미필'}">selected</c:if>>미필</option> 
                      <option value="면제" <c:if test="${military.militarySection eq '면제'}">selected</c:if>>면제</option> 
                      <option value="여성(비대상)" <c:if test="${military.militarySection eq '여성(비대상)'}">selected</c:if>>여성(비대상)</option> 
                    </select>
                  </td>
                  <td>
                    <input type="text" class="form-control input-sm masked-input-period" name="militaryPeriod" value="${military.militaryPeriod}"/>
                  </td>
                  <td>
                    <select class="form-control input-sm" name="militaryGroup">
                      <option value="NIL" <c:if test="${military.militaryGroup eq 'NIL'}">selected</c:if>>--군별선택--</option>
                      <option value="육군" <c:if test="${military.militaryGroup eq '육군'}">selected</c:if>>육군</option> 
                      <option value="해군" <c:if test="${military.militaryGroup eq '해군'}">selected</c:if>>해군</option> 
                      <option value="공군" <c:if test="${military.militaryGroup eq '공군'}">selected</c:if>>공군</option> 
                      <option value="해병" <c:if test="${military.militaryGroup eq '해병'}">selected</c:if>>해병</option> 
                      <option value="전경" <c:if test="${military.militaryGroup eq '전경'}">selected</c:if>>전경</option> 
                      <option value="해경" <c:if test="${military.militaryGroup eq '해경'}">selected</c:if>>해경</option> 
                      <option value="카투사" <c:if test="${military.militaryGroup eq '카투사'}">selected</c:if>>카투사</option> 
                      <option value="교도" <c:if test="${military.militaryGroup eq '교도'}">selected</c:if>>교도</option> 
                      <option value="상근" <c:if test="${military.militaryGroup eq '상근'}">selected</c:if>>상근</option> 
                      <option value="의경" <c:if test="${military.militaryGroup eq '의경'}">selected</c:if>>의경</option> 
                      <option value="공익" <c:if test="${military.militaryGroup eq '공익'}">selected</c:if>>공익</option>
                    </select>
                  </td>
                  <td>
                    <select class="form-control input-sm" name="militaryRank">
                      <option value="NIL" <c:if test="${military.militaryRank eq 'NIL'}">selected</c:if>>--계급선택--</option>
                      <option value="이병" <c:if test="${military.militaryRank eq '이병'}">selected</c:if>>이병</option> 
                      <option value="이병" <c:if test="${military.militaryRank eq '이병'}">selected</c:if>>이병</option> 
                      <option value="상병" <c:if test="${military.militaryRank eq '상병'}">selected</c:if>>상병</option> 
                      <option value="병장" <c:if test="${military.militaryRank eq '병장'}">selected</c:if>>병장</option> 
                   	  <option value="하사" <c:if test="${military.militaryRank eq '하사'}">selected</c:if>>하사</option> 
                   	  <option value="중사" <c:if test="${military.militaryRank eq '중사'}">selected</c:if>>중사</option>
                   	  <option value="상사" <c:if test="${military.militaryRank eq '상사'}">selected</c:if>>상사</option>
                   	  <option value="원사" <c:if test="${military.militaryRank eq '원사'}">selected</c:if>>원사</option>
                   	  <option value="준위" <c:if test="${military.militaryRank eq '준위'}">selected</c:if>>준위</option>
                   	  <option value="소위" <c:if test="${military.militaryRank eq '소위'}">selected</c:if>>소위</option>
                   	  <option value="중위" <c:if test="${military.militaryRank eq '중위'}">selected</c:if>>중위</option>
                   	  <option value="대위" <c:if test="${military.militaryRank eq '대위'}">selected</c:if>>대위</option>
                   	  <option value="소령" <c:if test="${military.militaryRank eq '소령'}">selected</c:if>>소령</option>
                   	  <option value="중령" <c:if test="${military.militaryRank eq '중령'}">selected</c:if>>중령</option>
                   	  <option value="대령" <c:if test="${military.militaryRank eq '대령'}">selected</c:if>>대령</option>                   	  
                   	  <option value="준장" <c:if test="${military.militaryRank eq '준장'}">selected</c:if>>준장</option>                   	  
                   	  <option value="소장" <c:if test="${military.militaryRank eq '소장'}">selected</c:if>>소장</option>
                   	  <option value="중장" <c:if test="${military.militaryRank eq '중장'}">selected</c:if>>중장</option>
                   	  <option value="대장" <c:if test="${military.militaryRank eq '대장'}">selected</c:if>>대장</option>
                   	  <option value="기타" <c:if test="${military.militaryRank eq '기타'}">selected</c:if>>기타</option>
                    </select>
                  </td>
                  <td>
                    <input type="text" class="form-control input-sm" name="militaryWork" value="${military.militaryWork}" maxlength="4"/>
                  </td>
                </tr>
                <tr>
                  <td class="warning">면제사유</td>
                  <td colspan="5">
                  	<input type="text" class="form-control input-sm" placeholder="면제 대상이 아니신 분들은 공란으로 남겨주세요." name="militaryReason" maxlength="20"  value="${military.militaryReason}"/>
                  </td>

                </tr>															</tbody>
              </table>
            </div>
            <div class="m-t-0 m-b-10 text-right">
              <a href="#" onClick="document.getElementById('resume-add-profile').submit()" class="btn btn-warning btn-sm">&nbsp; 저장 &nbsp;</a>
            </div>
          </form>
        </div>
      </div>
      <!-- end panel -->
    </div>
  </div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />