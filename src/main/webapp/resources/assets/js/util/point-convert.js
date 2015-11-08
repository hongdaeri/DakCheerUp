/*
*	학점 변환
*/
function fn_points_convert() {
	var perfect_point = $("select[id=point_type] option:selected").text();
	
	if(fn_chk_numeric_point($("#cur_point"))) {
		$("input[id^=result_point]").val("");
	}
	
	var cur_point = $("#cur_point").val();
	var ptype = $("select[id=point_type] option:selected").attr("ptype");
	cur_point = Number(cur_point);
	
	switch(perfect_point) {
		case "4.0" :
		case "4.3" :
		case "4.5" :
		case "5.0" :
		case "7.0" :
			if(cur_point < 1.00) {
				alert('1.0점 미만으로는 변환 불가하오니, 점수를 다시한번 확인해 주세요.');
				return;
			} else if (cur_point > Number(perfect_point)) {
				alert(perfect_point+'점 초과로는 변환 불가하오니, 점수를 다시한번 확인해 주세요.');
				return;
			}
			break;
		case "100" :
			if(cur_point < 60) {
				alert('60점 미만으로는 변환 불가하오니, 점수를 다시한번 확인해 주세요.');
				return;
			} else if (cur_point > Number(perfect_point)) {
				alert(perfect_point+'점 초과로는 변환 불가하오니, 점수를 다시한번 확인해 주세요.');
				return;
			}
			break;
		default :
			if (cur_point > Number(perfect_point)) {
				alert(perfect_point+'점 초과로는 변환 불가하오니, 점수를 다시한번 확인해 주세요.');
				return;
			}
			break;
	}

	perfect_point = Number(perfect_point);
	if(ptype != "") {	// 학점 data 있는 경우
		var arrtemp = eval("arrPointsType"+ptype+"["+cur_point+"]");
		var arrlist = arrtemp.split(",");
		if($.isArray(arrlist)) {
			$("input[id^=result_point]").each(function(idx,item) {
				if(idx<3) {
					$(this).val( arrlist[idx] );
				} else if(idx==5) {
					$(this).val( arrlist[3] );
				} else {
					var ppoint = Number( $(this).attr("ppoint") );
					$(this).val( ( ( (cur_point-1) * (ppoint - 1) / (perfect_point - 1) ) + 1 ).toFixed(2) );
				}
			});
		}
	} else {
		$("input[id^=result_point]").each(function(idx,item) {
			if(idx==3) {
				$(this).val( (perfect_point=="5.0") ? Number(cur_point).toFixed(2) : ( ( (cur_point-1) * (5 - 1) / (perfect_point - 1) ) + 1 ).toFixed(2) );
			} else if(idx==4) {
				$(this).val( (perfect_point=="7.0") ? Number(cur_point).toFixed(2) : ( ( (cur_point-1) * (7 - 1) / (perfect_point - 1) ) + 1 ).toFixed(2) );
			} else {
				var ppoint = Number( $(this).attr("ppoint") );
				$(this).val( ( (cur_point-1) * ( ( ppoint==100 ? (ppoint-60) : (ppoint-1)) / (perfect_point - 1) ) + (ppoint==100 ? 60 : 1) ).toFixed(2) );
				if(ppoint==100)	$(this).val( parseInt($(this).val()) );
			}
		});
	}
}


/*
*	숫자 및 소수점만 입력되도록
*/
function fn_chk_numeric_point(obj) {
	var str = $(obj).val();
	var var_normalize = /[^(\d+)(\.?\d*)$]/gi;
	
	if (var_normalize.test(str)) {
		alert("숫자와 소수점만 입력하실 수 있습니다.");
		$(obj).val(str.replace(var_normalize,""));
		return false;
	} else {
		return true;
	}
}