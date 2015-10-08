
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
function del_academicUnivRow(){	academicUnivTbl.deleteRow(-1); }
function add_academicUnivRow()
{
	var row = academicUnivTbl.insertRow(-1); // inserRow(0) = 맨처음삽입, insert(-1) 맨마지막 삽입.
	
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