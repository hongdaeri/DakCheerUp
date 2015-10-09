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

}