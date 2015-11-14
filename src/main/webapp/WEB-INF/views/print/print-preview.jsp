<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>닥취업 이력서 및 자기소개서 출력서비스</title>

	
	<link href="/resources/css/print-preview.css" rel="stylesheet"  />
	
	<link href="/resources/css/print-preview.css" rel="stylesheet" media="print" />
	
	
</head>
<body onLoad="javascript:alert('프린트 창에서 \'배경 그래픽\' 항목에 체크하세요.'); window.print();">
<!-- <body onLoad="javascript:alert('프린트 창에서 \'배경 그래픽\' 항목에 체크하세요.'); window.print();"> -->
<div class="print-contents in">
	<c:if test="${printResumeOption eq 'true'}">
		<h1>이 력 서</h1>
		<table id="profile" class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			<tr class="tr-height">
				<td rowspan="5" style="width:150px; height:200px;">이력사진<br> 3 X 4</td>
				<td  class="bg-color-info" >이름</td>
				<td>${profile.profileName}</td>
				<td class="bg-color-info" >영문</td>
				<td>${profile.profileEname}</td>
				<td class="bg-color-info" >한자</td>
				<td>${profile.profileCname}</td>					
			</tr>
			<tr class="tr-height">
				<td class="bg-color-info" >주민번호</td>
				<td colspan="3">${profile.profileJuminFront} - ${profile.profileJuminBack }</td>		
				<td class="bg-color-info" >나이</td>
				<td>만 ${age}세</td>
			</tr>
			<tr class="tr-height">
				<td class="bg-color-info" >휴대폰</td>
				<td colspan="2">${profile.profilePhone}</td>		
				<td class="bg-color-info" >이메일</td>
				<td colspan="2">${profile.profileEmail}</td>
			
			</tr>			
			<tr class="tr-height">
				<td class="bg-color-info" >주소</td>
				<td colspan="5">${profile.profileAddr}</td>		
			</tr>
			<tr class="tr-height">
				<td class="bg-color-info" >취미</td>
				<td>${profile.profileHobby}</td>
				<td class="bg-color-info" >특기</td>
				<td>${profile.profileForte}</td>
				<td class="bg-color-info" >보훈여부</td>
				<td>${profile.profileVeterans}</td>						
			</tr>
	
		</table>
		
	
		<c:if test="${not empty military}">
			<h4>병역사항</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">				
				<tr class="tr-height">
					<th class="bg-color-info" >군필여부</th>
					<th class="bg-color-info"  colspan="2">복무기간</th>
					<th class="bg-color-info" >군별</th>
					<th class="bg-color-info" >계급</th>
					<th class="bg-color-info" >병과</th>
				</tr>
				<tr class="tr-height">
					<td>${military.militarySection}</td>
					<td colspan="2">${military.militaryPeriod}</td>
					<td>${military.militaryGroup}</td>
					<td>${military.militaryRank}</td>
					<td>${military.militaryWork}</td>
				</tr>	
				<tr class="tr-height">
					<th class="bg-color-info" >미필사유</th>
					<td colspan="5">${military.militaryReason}</td>
				</tr>		
			</table>
		</c:if>
		<c:if test="${not empty familyList}">
			<h4>가족관계</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
		
				<tr class="tr-height">
					<th class="bg-color-info" >관계</th>
					<th class="bg-color-info" >성명</th>
					<th class="bg-color-info" >연령</th>
					<th class="bg-color-info" >현재직업</th>
					<th class="bg-color-info" >동거여부</th>
				</tr>
				<c:forEach items="${familyList}" var="family">
					<tr class="tr-height">
						<td>${family.familyRelation}</td>
						<td>${family.familyName}</td>
						<td>${family.familyAge}</td>
						<td>${family.familyJob}</td>
						<td>${family.familyLive}</td>
					</tr>	
				</c:forEach>	
			</table>
		</c:if>
		<c:if test="${academicPrint}">	
			<h4>학력사항</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
	
				<tr class="tr-height">
					<th  class="bg-color-info" colspan="2">재학기간</th>
					<th  class="bg-color-info" colspan="3">학교명</th>
					<th class="bg-color-info"  colspan="2">전공</th>
					<th class="bg-color-info" >구분</th>
				</tr>
				<c:if test="${not empty academicHigh}">	
					<tr class="tr-height">
						<td colspan="2">${academicHigh.academicHighPeriod}</td>
						<td colspan="3">${academicHigh.academicHighName}</td>
						<td colspan="2">${academicHigh.academicHighMajor}</td>
						<td>${academicHigh.academicHighSection}</td>
					</tr>	
				</c:if>	
				<c:forEach items="${academicUnivList}" var="univ">
					<tr class="tr-height">
						<td colspan="2">${univ.academicUnivPeriodFirst} - ${univ.academicUnivPeriodLast}</td>
						<td colspan="3">${univ.academicUnivName}</td>
						<td colspan="2">${univ.academicUnivMajor}</td>
						<td>${univ.academicUnivPeriodLastOption}</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty oa}">
			<h4>OA능력</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th  class="bg-color-info" colspan="2">문서작성<br>(한글/MS-Word)</th>
					<th  class="bg-color-info" colspan="2">스프레드시트<br>(EXCEL)</th>
					<th class="bg-color-info"  colspan="2">프리젠테이션<br>(Power point)</th>
					<th class="bg-color-info"  colspan="2">인터넷활용<br>(정보검색/블로깅)</th>
					<th class="bg-color-info"  colspan="2">그래픽<br>(Photoshop/Illustrator)</th>
				</tr>
				<tr class="tr-height">
					<td colspan="2">${oa.oaDoc}</td>
					<td colspan="2">${oa.oaExcel}</td>
					<td colspan="2">${oa.oaPpt}</td>
					<td colspan="2">${oa.oaInternet}</td>
					<td colspan="2">${oa.oaGraphic}</td>
				</tr>	
			</table>
		</c:if>
		<c:if test="${not empty langAbilityList}">
			<h4>어학능력</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th class="bg-color-info" >언어</th>
					<th class="bg-color-info" >회화능력</th>
					<th class="bg-color-info" >작문능력</th>
					<th class="bg-color-info" >독해능력</th>
				</tr>
				<c:forEach items="${langAbilityList}" var="langAbility">
					<tr class="tr-height">
						<td>${langAbility.langAbilityName }</td>
						<td>${langAbility.langAbilityConversation }</td>
						<td>${langAbility.langAbilityComposition }</td>
						<td>${langAbility.langAbilityReading }</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty languageExamList}">
			<h4>어학시험</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th class="bg-color-info"  colspan="2">언어</th>
					<th  class="bg-color-info" colspan="2">어학시험명</th>
					<th class="bg-color-info"  colspan="2">점수</th>
					<th class="bg-color-info"  colspan="2">기관</th>
				</tr>
				<c:forEach items="${languageExamList}" var="langExam">
					<tr class="tr-height">
						<td colspan="2">${langExam.langExamLName}</td>
						<td colspan="2">${langExam.langExamEName}</td>
						<td colspan="2">${langExam.langExamScore}${langExam.langExamType }</td>
						<td colspan="2">${langExam.langExamOrg}</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty licenseList}">
			<h4>자격증/면허증</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th class="bg-color-info" >취득일자</th>
					<th class="bg-color-info" >자격/면허명</th>
					<th class="bg-color-info" >발급기관</th>
				</tr>
				<c:forEach items="${licenseList}" var="license">
					<tr class="tr-height">
						<td>${license.licenseDate}</td>
						<td>${license.licenseName}</td>
						<td>${license.licenseOrg}</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty awardList}">
			<h4>수상내역/공모전</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th class="bg-color-info" >수상일</th>
					<th  class="bg-color-info" colspan="3">수상내용</th>
					<th  class="bg-color-info" colspan="2">수상기관</th>
					<th class="bg-color-info" >작업구분</th>
				</tr>
				<c:forEach items="${awardList}" var="award">
					<tr class="tr-height">
						<td>${award.awardDate}</td>
						<td colspan="3">${award.awardName}</td>
						<td colspan="2">${award.awardOrg}</td>
						<td>${award.awardSection}</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty educationList}">
			<h4>교육이수내역</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th class="bg-color-info"  colspan="2">기간</th>
					<th class="bg-color-info"  colspan="4">교육과정명</th>
					<th class="bg-color-info"  colspan="2">교육기관</th>
				</tr>
				<c:forEach items="${educationList}" var="education">
					<tr class="tr-height">
						<td colspan="2">${education.educationPeriod}</td>
						<td colspan="4">${education.educationName}</td>
						<td colspan="2">${education.educationOrg}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty careerList}">
			<h4>경력 및 실습사항</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th  class="bg-color-info" colspan="2">기간</th>
					<th  class="bg-color-info" colspan="2">회사/기관명</th>
					<th class="bg-color-info" >부서</th>
					<th class="bg-color-info" >직위</th>
					<th class="bg-color-info"  colspan="3">담당업무</th>
				</tr>
				<c:forEach items="${careerList}" var="career">
					<tr class="tr-height">
						<td colspan="2">${career.careerPeriod }</td>
						<td colspan="2">${career.careerCompany }</td>
						<td>${career.careerPost }</td>
						<td>${career.careerPosition }</td>
						<td colspan="3">${career.careerWork }</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty projectList}">
			<h4>참여 프로젝트</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<c:forEach items="${projectList}" var="project">
					<tr class="tr-height">
						<th class="bg-color-info"  colspan="2">기간</th>
						<th class="bg-color-info" >구분</th>
						<th class="bg-color-info" colspan="4">프로젝트 명</th>
					</tr>
					<tr class="tr-height">
						<td colspan="2">${project.projectPeriod}</td>
						<td>${project.projectSection}</td>
						<td colspan="4">${project.projectName}</td>
					</tr>
					<tr class="tr-height">
						<th  class="bg-color-info" colspan="2">상세내용</th>
						<td colspan="5">${project.projectContext}</td>
					</tr>
				</c:forEach>	
			</table>
		</c:if>
		<c:if test="${not empty voluntaryList}">
			<h4>봉사/대외 활동</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
				
				<tr class="tr-height">
					<th  class="bg-color-info" colspan="2">기간</th>
					<th class="bg-color-info"  colspan="4">활동내용</th>
					<th  class="bg-color-info" colspan="2">활동기관</th>
				</tr>
				<c:forEach items="${voluntaryList}" var="voluntary">
					<tr class="tr-height">
						<td colspan="2">${voluntary.voluntaryPeriod}</td>
						<td colspan="4">${voluntary.voluntaryContent}</td>
						<td colspan="2">${voluntary.voluntaryOrg}</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty globalList}">
			<h4>글로벌 경험</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">		
				<tr class="tr-height">
					<th class="bg-color-info"  colspan="2">기간</th>
					<th class="bg-color-info" >국가</th>
					<th class="bg-color-info" >목적</th>
					<th class="bg-color-info"  colspan="4">경험내용</th>
				</tr>
				<c:forEach items="${globalList}" var="global">
					<tr class="tr-height">
						<td colspan="2">${global.globalPeriod}</td>
						<td>${global.globalNation}</td>
						<td>${global.globalPurpose}</td>
						<td colspan="4">${global.globalContent}</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty writeList}">
			<h4>저술 내역</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
			
				<tr class="tr-height">
					<th class="bg-color-info" >발행(개제)일</th>
					<th class="bg-color-info" >분류</th>
					<th class="bg-color-info" colspan="4">저술명</th>
					<th class="bg-color-info" colspan="2">발행(개제)처</th>
				</tr>
				<c:forEach items="${writeList}" var="write">
					<tr class="tr-height">
						<td>${write.writeDate}</td>
						<td>${write.writeSection}</td>
						<td colspan="4">${write.writeName}</td>
						<td colspan="2">${write.writeOrg}</td>
					</tr>	
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${not empty swot}">
			<h4>SWOT 자기분석</h4>
			<table class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
				<tr class="tr-height">
					<th class="bg-color-info width-400" colspan="4">강점(Strength)</th>
					<th class="bg-color-info width-400" colspan="4">약점(Weakness)</th>
				</tr>
				<tr class="tr-height">
					<td colspan="4">${swot.swotStrength}</td>
					<td colspan="4">${swot.swotWeakness}</td>
				</tr>
				<tr class="tr-height">
					<th class="bg-color-info width-400" colspan="4">기회(Opportunities)</th>
					<th class="bg-color-info width-400" colspan="4">위협(Threats)</th>
				</tr>
				<tr class="tr-height">
					<td colspan="4">${swot.swotOpportunities}</td>
					<td colspan="4">${swot.swotThreats}</td>
				</tr>
		
				<tr class="tr-height">
					<th class="bg-color-info width-200" colspan="2">SO전략 (강점-기회)</th>
					<td class="width-600" colspan="6">${swot.swotSo}</td>
				</tr>	
				<tr class="tr-height">
					<th class="bg-color-info width-200"  colspan="2">ST전략 (강점-위협)</th>
					<td class="width-600" colspan="6">${swot.swotSt}</td>
				</tr>
				<tr class="tr-height">
					<th class="bg-color-info width-200" colspan="2">WO전략 (약점-기회)</th>
					<td class="width-600" colspan="6">${swot.swotWo}</td>
				</tr>
				<tr class="tr-height">
					<th class="bg-color-info width-200" colspan="2">WT전략 (약점-위협)</th>
					<td class="width-600" colspan="6">${swot.swotWt}</td>
				</tr>
			</table>
		</c:if>		
	</c:if>
	<br>
			<p>위의 내용은 사실과 틀림이 없습니다.</p>		
			<p><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${today}" /></p>
			<p class="user-sign">지 원 자 : ${profile.profileName}&nbsp; ( 인 )</p>
		
	
	<p style="page-break-before:always;"><br style="height:0; line-height:0;">

	<c:if test="${printResumeOption eq 'true'}">
		<h1>자기소개서</h1>
		<table id="jaso" class="talbe table-td-valign-middle table-valign-middle text-center table-bordered width-800">
				
			<c:if test="${not empty swot}">
				<c:forEach items="${qnaList}" var="qna">
					<tr class="tr-height">
						<th class="height-40 bg-color-info">${qna.qnaQuestion}</th>
					</tr>
					<tr class="tr-height">
						<td class="padding-20 text-left">${qna.qnaAnswer}</td>
					</tr>
				</c:forEach>			
			</c:if>
		</table>		
	</c:if>
	</p>
</div>
</body>
</html>