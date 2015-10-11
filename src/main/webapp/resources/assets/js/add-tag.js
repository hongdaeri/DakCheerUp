/****************************************************
 *    RESUME ADD ACTION
 *
 ****************************************************/
var academicUniv_noTh = 0; 
var s2_noTh = 0; 
var s3_noTh = 0; 
var s4_noTh = 0; 
var s5_noTh = 0; 
var s6_noTh = 0; 
var s7_noTh = 0; 
var s8_noTh = 0; 
var maXnoTh = 1;

//가족사항
function del_familyRow(){	familytbl.deleteRow(-1); }
function add_familyRow()
{
	var row = familytbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	var cell6 = row.insertCell(5);

	cell1.innerHTML = '<a onClick="del_familyRow();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<select class="form-control input-sm" name="newFamilyRelation"><option value="NIL">--선택하세요--</option><option value="친할아버지">친할아버지</option><option value="친할머니">친할머니</option><option value="외할아버지">외할아버지</option><option value="외할머니 ">외할머니</option><option value="아버지">아버지</option><option value="어머니">어머니</option><option value="손위 형제 ">손위 형제</option> <option value="손위 자매">손위 자매</option><option value="손아래 형제">손아래 형제</option><option value="손아래 자매">손아래 자매</option></select>';
	cell3.innerHTML = '<input type="text" class="form-control input-sm"  name="newFamilyName" maxlength="10"/>';
	cell4.innerHTML = '<input type="text" class="form-control input-sm"  name="newFamilyAge" maxlength="3"/>';
	cell5.innerHTML = '<input type="text" class="form-control input-sm"  name="newFamilyJob" maxlength="8"/>';
	cell6.innerHTML = '<select class="form-control input-sm" name="newFamilyLive"><option value="NIL">--선택하세요--</option><option value="동거">동거</option><option value="비동거">비동거</option></select>';
}

//학력사항 - 대학교
function del_academicUnivRow(){		
	academicUnivDiv.removeChild(academicNewDiv)
	academicUniv_noTh = academicUniv_noTh - 1;
	}
function add_academicUnivRow()
{
	if(maXnoTh <= academicUniv_noTh)        
	{ 
	    alert('대학교 항목은 한번에 한개씩 추가 할 수 있습니다.'); 
	    return; 
	} 
	academicUniv_noTh = academicUniv_noTh + 1; 
	
	academicUnivDiv.innerHTML=academicUnivDiv.innerHTML 
			+' <div id="academicNewDiv">'
			+' <table id="academicUnivTbl" class="table table-bordered table-condensed table-valign-middle text-center">'
            +'	<tr>' 
            +'		<td rowspan="3" class="width-60 warning"><a onclick="del_academicUnivRow();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a></td>' 
            +'      <td class="warning">재학기간</td>' 
            +'      <td colspan="3">' 
            +'      <div class="row m-0 p-0">'
            +'          <div class="col-xs-4">'
            +'            <div class="row">'
            +'              <div class="col-xs-7 m-0 p-1">'
            +'              	<input type="text" class="form-control input-sm masked-input-yyyy-mm" name="newAcademicUnivPeriodFirst"/>'
            +'              </div>'
            +'               <div class="col-xs-5 m-0 p-1">'
            +'                 <select class="form-control input-sm" name="newAcademicUnivPeriodFirstOption">'
            +'                   <option value="NIL" selected>--선택하세요--</option>'
            +'                   <option value="입학">입학</option>'
            +'                   <option value="편입">편입</option>'
            +'                </select>'
            +'               </div>'
            +'             </div>'
            +'          </div>'
            +'          <div class="col-xs-1 p-t-5">~</div>'
            +'          <div class="col-xs-4">'
            +'            <div class="row">'
            +'               <div class="col-xs-7 m-0 p-1"><input type="text" class="form-control input-sm masked-input-yyyy-mm" name="newAcademicUnivPeriodLast"/></div>'
            +'               <div class="col-xs-5 m-0 p-1">'
            +'                <select class="form-control input-sm" name="newAcademicUnivPeriodLastOption">'
            +'                   <option value="NIL" selected>--선택하세요--</option>'
            +'                  <option value="졸업">졸업</option>'
            +'                   <option value="재학중">재학중</option>'
            +'                   <option value="휴학중">휴학중</option>'
            +'                   <option value="졸업예정">졸업예정</option>'
            +'                   <option value="중퇴">중퇴</option>'
            +'                   <option value="자퇴">자퇴</option>'
            +'                  <option value="수료">수료</option>'
            +'                 </select>'
            +'              </div>'
            +'             </div>'
            +'           </div>'
            +'           <div class="col-xs-3">'
            +'             <select class="form-control input-sm" name="newAcademicUnivDegree">'
            +'              <option value="NIL" selected>--선택하세요--</option>'
            +'              <option value="전문학사">전문학사</option>'
            +'              <option value="학사">학사</option>'
            +'              <option value="석사">석사</option>'
            +'              <option value="박사">박사</option>'
            +'             </select>'
            +'          </div>'
            +'          </div>'
            +'        </td>'
            +'       </tr>'
            
            +'      <tr>'
            +'      <td class="warning">학교명</td>'
            +'      <td class="warning">전공</td>'
            +'      <td class="warning">학점</td>'
            +'      <td class="warning">부/복수전공</td>'
            +'      </tr>'
            +'      <tr>'
            +'      <td><input type="text" class="form-control input-sm" name="newAcademicUnivName" maxlength="25"/></td>'
            +'      <td><input type="text" class="form-control input-sm" name="newAcademicUnivMajor" maxlength="25"/></td>'
            +'      <td>'
            +'        <div class="row">'
            +'          <div class="col-xs-6">'
            +'            <input type="text" class="form-control input-sm" name="newAcademicUnivScore" maxlength="5"/>'
            +'          </div>'
            +'          <div class="col-xs-6">'
            +'            <select class="form-control input-sm" name="newAcademicUnivScoreOption">'
            +'             <option value="NIL" selected>--선택하세요--</option>'
            +'             <option value="4.0">4.0</option>'
            +'              <option value="4.3">4.3</option>'
            +'              <option value="4.5">4.5</option>'
            +'               <option value="7.0">7.0</option>'
            +'              <option value="100">100</option>'
            +'             </select>'
            +'          </div>'
            +'        </div>'
            +'       </td>'
            +'      <td>'
            +'        <div class="row">'
            +'          <div class="col-xs-4">'
            +'            <select class="form-control input-sm" name="newAcademicUnivDoubleOption">'
            +'             <option value="NIL" selected>--선택--</option>'
            +'               <option value="해당없음">해당없음</option>'
            +'               <option value="부전공">부전공</option>'
            +'               <option value="복수전공">복수전공</option>'
            +'              <option value="이중전공">이중전공</option>'
            +'             </select>'
            +'           </div>'
            +'           <div class="col-xs-8">'
            +'            <input type="text" class="form-control input-sm" name="newAcademicUnivDoubleName" maxlength="25"/>'
            +'          </div>'
            +'        </div>'
            +'      </td>'
            +'      </tr>'
            +'    </table>'
            +'   </div>'
            
	      $(".masked-input-yyyy-mm").mask("9999.99");

}

//자격증/면허증
function del_LicenseRow(){	licenseTbl.deleteRow(-1); }
function add_LicenseRow()
{
	var row = licenseTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	
	cell1.innerHTML = '<a onClick="del_LicenseRow();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<input  name="newLicenseDate" type="text" class="form-control input-sm masked-input-yyyy-mm-dd"/>';
	cell3.innerHTML = '<input  name="newLicenseName" type="text" class="form-control input-sm" maxlength="15"/>';
	cell4.innerHTML = '<input  name="newLicenseOrg" type="text" class="form-control input-sm" maxlength="15"/>';
	cell5.innerHTML = '<select  name="newLicensePass" class="form-control input-sm"><option value="NIL" selected>-- 합격구분 --</option>        <option value="1차합격">1차합격</option>        <option value="2차합격">2차합격</option>        <option value="필기합격">필기합격</option>        <option value="실기합격">실기합격</option>        <option value="최종합격">최종합격</option>      </select>';

   $(".masked-input-yyyy-mm-dd").mask("9999.99.99");

}

// 어학능력
function del_LangAbilityRow(){	langAbilityTbl.deleteRow(-1); }
function add_LangAbilityRow()
{
	var row = langAbilityTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);

	cell1.innerHTML = '<a onClick="del_LangAbilityRow();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<select class="form-control input-sm" name="newLangAbilityName">        <option value="NIL" selected>-- 언어선택 --</option>        <option value="한국어">한국어</option>        <option value="영어">영어</option>        <option value="일본어">일본어</option>        <option value="중국어">중국어</option>        <option value="불어">불어</option>       <option value="스페인어">스페인어</option>        <option value="러시아어">러시아어</option>        <option value="광동어">광동어</option>        <option value="네덜란드어">네덜란드어</option>        <option value="네팔어">네팔어</option>        <option value="노르웨이어">노르웨이어</option>        <option value="따갈로그어">따갈로그어</option>        <option value="라오스어">라오스어</option>        <option value="라오어">라오어</option>        <option value="루마니아어">루마니아어</option>        <option value="말레이인니어">말레이인니어</option>        <option value="몽골어">몽골어</option>       <option value="미얀마어">미얀마어</option>        <option value="베트남어">베트남어</option>        <option value="벵갈어">벵갈어</option>        <option value="세르비아어">세르비아어</option>       <option value="스와힐리어">스와힐리어</option>        <option value="스웨덴어">스웨덴어</option>        <option value="슬로바키아어">슬로바키아어</option>        <option value="슬로베니아어">슬로베니아어</option>        <option value="아랍어">아랍어</option>        <option value="우루두어">우루두어</option>        <option value="우즈벡어">우즈벡어</option>        <option value="이란어">이란어</option>        <option value="이탈리아어">이탈리아어</option>        <option value="인니어">인니어</option>        <option value="인도네시아어">인도네시아어</option>        <option value="인도어">인도어</option>        <option value="체코어">체코어</option>        <option value="카자흐어">카자흐어</option>        <option value="캄보디아어">캄보디아어</option>        <option value="크로아티아어">크로아티아어</option>        <option value="타갈로그어">타갈로그어</option>        <option value="태국어">태국어</option>        <option value="터키어">터키어</option>        <option value="페르시아어">페르시아어</option>        <option value="포르투갈어">포르투갈어</option>        <option value="폴란드어">폴란드어</option>        <option value="필리핀어">필리핀어</option>        <option value="헝가리어">헝가리어</option>        <option value="희랍어">희랍어</option>        <option value="힌디어">힌디어</option>        <option value="기타">기타</option>      </select>';
	cell3.innerHTML = '<select class="form-control input-sm" name="newLangAbilityConversation">   <option value="NIL" selected>-- 독해능력 --</option>        <option value="상">상</option>        <option value="중">중</option>        <option value="하">하</option>      </select>';
	cell4.innerHTML = '<select class="form-control input-sm" name="newLangAbilityComposition">    <option value="NIL" selected>-- 작문능력 --</option>        <option value="상">상</option>        <option value="중">중</option>        <option value="하">하</option>      </select>';
	cell5.innerHTML = '<select class="form-control input-sm" name="newLangAbilityReading">        <option value="NIL" selected>-- 독해능력 --</option>        <option value="상">상</option>        <option value="중">중</option>        <option value="하">하</option>      </select>';

}

//어학시험
function del_LangExamRow(){	langExamTbl.deleteRow(-1); }
function add_LangExamRow()
{
	var row = langExamTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	
	cell1.innerHTML = '<a onClick="del_LangExamRow();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<SELECT class="form-control input-sm" name="newLangExamLName" onChange="BuildLangExamOp(this);">        <OPTION Value="NIL">-- 선택 --        <OPTION Value="영어">영어        <OPTION Value="일어">일어        <OPTION Value="중국어">중국어        <OPTION Value="독일어">독일어        <OPTION Value="불어">불어        <OPTION Value="스페인어">스페인어        <OPTION Value="러시아어">러시아어        <OPTION Value="이탈리아어">이탈리아어        <OPTION Value="한국어">한국어        <OPTION Value="한자">한자      </Select>';
	cell3.innerHTML = '<SELECT class="form-control input-sm LangExamEName" name="newLangExamEName">        <OPTION Value="NIL">-- 선택 --        </Select>';
	cell4.innerHTML = '<div class="row">        <div class="col-xs-6">    <input name="newLangExamScore" type="text" class="form-control input-sm"/>  </div>  <div class="col-xs-6">    <select  name="newLangExamType" class="form-control input-sm">      <option value="NIL" selected>-- 선택 --</option>      <option value="점">점</option>      <option value="급">급</option>      <option value="Pass">Pass</option>    </select>  </div></div>';
	cell5.innerHTML = '<input name="newLangExamOrg" type="text" class="form-control input-sm"/>';

}

//수상실적
function del_award(){	awardTbl.deleteRow(-1); }
function add_award()
{
	var row = awardTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);

	cell1.innerHTML = '<a onClick="del_award();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<input name="newAwardDate" type="text" class="form-control input-sm masked-input-yyyy-mm"/>';
	cell3.innerHTML = '<input name="newAwardName" type="text" class="form-control input-sm"/>';
	cell4.innerHTML = '<input name="newAwardOrg" type="text" class="form-control input-sm"/>';
	cell5.innerHTML = '<select name="newAwardSection" class="form-control input-sm">        <option value="NIL" selected>-- 선택 --</option>        <option value="공동">공동</option>        <option value="개인">개인</option>      </select>';

	$(".masked-input-yyyy-mm").mask("9999.99");
}

//경력 및 실습사항
function del_career(){	careerTbl.deleteRow(-1); }
function add_career()
{
	var row = careerTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	var cell6 = row.insertCell(5);

	cell1.innerHTML = '<a onClick="del_career();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<input name="newCareerPeriod" type="text" class="form-control input-sm masked-input-period"/>';
	cell3.innerHTML = '<input name="newCareerCompany" type="text" class="form-control input-sm"/>';
	cell4.innerHTML = '<input name="newCareerPost" type="text" class="form-control input-sm"/>';
	cell5.innerHTML = '<input name="newCareerPosition" type="text" class="form-control input-sm"/>';
	cell6.innerHTML = '<input name="newCareerWork" type="text" class="form-control input-sm"/>';
	
	$(".masked-input-period").mask("9999.99 - 9999.99");
}

//봉사활동
function del_voluntary(){	voluntaryTbl.deleteRow(-1); }
function add_voluntary()
{
	var row = voluntaryTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	

	cell1.innerHTML = '<a onClick="del_voluntary();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<input name="newVoluntaryPeriod" type="text" class="form-control input-sm masked-input-period"/>';
	cell3.innerHTML = '<input name="newVoluntaryOrg"  maxlength="25" type="text" class="form-control input-sm"/>';
	cell4.innerHTML = '<input name="newVoluntaryContent" maxlength="50" type="text" class="form-control input-sm"/>';
	
	
	$(".masked-input-period").mask("9999.99 - 9999.99");
}

//교육이수
function del_education(){	educationTbl.deleteRow(-1); }
function add_education()
{
	var row = educationTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	

	cell1.innerHTML = '<a onClick="del_education();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<input name="newEducationPeriod" type="text" class="form-control input-sm masked-input-period"/>';
	cell3.innerHTML = '<input name="newEducationName" maxlength="20" type="text" class="form-control input-sm"/>';
	cell4.innerHTML = '<input name="newEducationOrg" maxlength="25" type="text" class="form-control input-sm"/>';
	
	
	$(".masked-input-period").mask("9999.99 - 9999.99");
}

//참여프로젝트
function del_project(){	
	projectTbl.deleteRow(-1); 
	projectTbl.deleteRow(-1); 
}
function add_project()
{
	var row = projectTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell1 = row.insertCell(0);
	cell1.rowSpan = "2";
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	

	cell1.innerHTML = '<a onClick="del_project();" class="btn btn-danger btn-icon btn-xs btn-circle"><i class="ion-minus-round fa fa-lg text-white"></i></a>';
	cell2.innerHTML = '<input name="newProjectPeriod" type="text" class="form-control input-sm masked-input-period"/>';
	cell3.innerHTML = '<select name="newProjectSection" class="form-control input-sm">        <option value="NIL" selected>-- 선택 --</option>        <option value="공동">공동</option>        <option value="개인">개인</option>      </select>';
	cell4.innerHTML = '<input name="newProjectName" maxlength="30" type="text" class="form-control input-sm"/>';
	
	var row2 = projectTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
	var cell5 = row2.insertCell(0);
	cell5.className = "warning";
	var cell6 = row2.insertCell(1);
	cell6.colSpan="2";

	cell5.innerHTML = '상세 내용';
	cell6.innerHTML = '<textarea name="newProjectContext" class="textarea form-control noresize" rows="9">&#8734; 자유롭게 기술하세요. 아래는 예시 입니다.\n&#8734; IT 프로젝트였다면 사용 언어,기술, DBMS, OS 등을 언급 해 주시는 것이 좋습니다.\n1) 소속업체 :\n2) 의뢰업체 :\n3) 목표 :\n4) 구성원 :\n5) 참여도 :\n6) 담당업무 :\n7) 주요실적 : </textarea>';

	$(".masked-input-period").mask("9999.99 - 9999.99");
}