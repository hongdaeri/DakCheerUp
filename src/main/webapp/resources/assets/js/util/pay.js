$("#payMonthDiv").hide();
$("#non-taxable-custom-div").hide();

    
	// 월급선택시 뷰 변경
    $("#monthly_salary").click(function(){
   		$("#payYearDiv").hide();
    	$("#payMonthDiv").show();
    	$("#payLabel").text('월급');
	});
    
	// 연봉선택시 뷰 변경
    $("#annual_salary").click(function(){
   		$("#payYearDiv").show();
    	$("#payMonthDiv").hide();
    	$("#payLabel").text('연봉');
	});
    

    
    
    /*
    *	계산하기
    */
    function fn_calculate() {
    	if($("#dependency").val().trim()=="") {
    		alert("부양가족수를 입력해 주십시오.");
    		$("#dependency").focus();
    		return;
    	} else {
    		if(parseInt($("#dependency").val()) < 1) {
    			alert("부양가족수는 본인을 포함하여 1 이상 입력해야 합니다.\n다시 입력해 주십시오.");
    			$("#dependency").focus();
    			return;
    		}
    	}
    	if($("#tax_free").val().trim()=="") {
    		alert("비과세액을 입력해 주십시오.");
    		fn_toggle_input('#tax_free',true);
    		return;
    	}
    	if($("#income_salary").val().trim()=="") {
    		alert("연봉을 입력해 주십시오.");
    		$("#income_salary").focus();
    		return;
    	}
    	
    	var income_salary = parseInt($("#income_salary").val().split(',').join(''));	// 연봉
    	var tax_free = parseInt($("#tax_free").val().split(',').join(''));						// 비과세액
    	var dependency = parseInt($("#dependency").val().split(',').join(''));		// 부양가족수
    	
    	var underage_cnt = parseInt( $("input[name=underage_children]:checked").val() );	// 20세이하 자녀수
    	var salary_type = $("input[name=salary_type]:checked").val();		// 연봉타입
    	var retiring_type = $("input[name=retiring_type]:checked").val();	// 퇴직금포함
    	
        var annual_salary = 0;							// 연간 총급여액
        var monthly_salary = 0;							// 월급여액(비과세액 제외)
        var monthly_section = 0;							// 월급여액(비과세액 제외)이 속한 급여구간의 중간 값
        var earned_deduction = 0;						// 근로소득공제액
        var earned_income = 0;							// 근로소득금액
        var personal_allowance = 0;					// 인적공제액
        var pension_deduction = 0;						// 연금보험료공제액
        var special_deduction = 0;						// 특별공제액
        var assessment_standard = 0;					// 과세표준액
        var calculated_tax = 0;							// 산출세액
        var earned_income_tax_deduction = 0;		// 근로소득세액공제액
        var settled_tax = 0;									// 결정세액
        
    	if($("#annual_salary").is(":checked")) {	// 연봉
    		monthly_salary = (income_salary / ( $("#rg01").is(":checked") ? 12 : 13 )) - tax_free;	// 퇴직금 포함여부에 따라
    	} else {	// 월급
    		monthly_salary = income_salary - tax_free;
    	}
    	
    	monthly_salary = Math.floor(monthly_salary);
    	if (monthly_salary < 0) {
    		alert("비과세액이 월급여액보다 많습니다.");
    		$("#income_salary").focus();
    		return false;
    	}
    	
    	// 연간 총급여액
    	var period_start = 0;	// 구간 시작
    	var period_end = 0;		// 구간 끝
    	var period_min = 0;		// 구간 최소값
    	var period_max = 0;		// 구간 최대값
    	var period_range = 0;	// 구간 증가범위
    	
    	if (monthly_salary < 1500000) {
    		period_min = 800000;
    		period_max = 1500000;
    		period_range = 5000;
    	} else if (monthly_salary >= 1500000 && monthly_salary  < 3000000) {
    		period_min = 1500000;
    		period_max = 3000000;
    		period_range = 10000;
    	} else if (monthly_salary >= 3000000 && monthly_salary  < 10000000) {
    		period_min = 3000000;
    		period_max = 10000000;
    		period_range = 20000;
    	} else {
    		annual_salary = monthly_salary*12;	// 급여가 천만원이 넘으면 급여액에 12를 곱한금액을 지정한다
    	}
         
    	// 해당 구간 검색
    	for(period_start=period_min; period_start<period_max; period_start+=period_range) {
    		period_end = period_start + period_range;

    		if ( (period_start <= monthly_salary) && (monthly_salary<period_end) ) {
    			monthly_section = parseInt( (period_start+period_end) / 2 );	// 해당하는 구간이 존재할 경우, 중간값으로 지정 비과세소득 제외 소득구간의 중간 값
    		}

    		annual_salary = monthly_section * 12;	// 구간의 총급여액을 계산한다 연간 총급여액
    	}

    	//alert("월급여액(비과세소득 제외) : " + monthly_section );
    	//alert("연간 총급여액 : " + annual_salary );

    	// 2015-06-26 근로소득공제 기준 변경
    	// 근로소득공제액
    	if(annual_salary < 5000000) {				// 연간 총급여액이 500만원 이하인 경우
    		earned_deduction = annual_salary * 0.7;
    	} else if (annual_salary <= 15000000) {	// 연간 총급여액이 1500만원 이하인 경우
    		earned_deduction = 3500000 + (annual_salary - 5000000) * 0.4;
    	} else if (annual_salary <= 45000000) {	// 연간 총급여액이 4500만원 이하인 경우
    		earned_deduction = 7500000 + (annual_salary - 15000000) * 0.15;
    	} else if (annual_salary <= 100000000) {	// 연간 총급여액이 1억원 이하인 경우
    		earned_deduction = 12000000 + (annual_salary - 45000000) * 0.05;
    	} else {												// 연간 총급여액이 1억원 초과인 경우
    		earned_deduction = 14750000 + (annual_salary - 100000000) * 0.02;
    	}

    	//alert("근로소득공제액 : " + earned_deduction ); // 12,156,000


    	// 근로소득금액 (연간 총급여액 - 근로소득공제액)
    	earned_income = annual_salary - earned_deduction;

    	//alert("근로소득금액 : " + earned_income ); // 35,964,000

    	
    	// 기본공제대상의 자녀가 있는 경우 공제대상가족의 수
    	// 실제 공제대상가족의 수 + 20세 이하 자녀의 수
    	// 인적공제액
    	personal_allowance = dependency * 1500000;	// 기본공제 인당 150만원
    	personal_allowance += (underage_cnt >= 2) ? underage_cnt *1500000 : 0; // 2015-06-26 150만원 *

    	//personal_allowance += (underage_cnt >= 2) ? 500000 : 0;	// 자녀 2명 이상일 경우, 50만원 추가

    	//alert("인적공제액 : " + personal_allowance ); // 6명일 때 9,000,000

    	// 2015-06-26 연금보험료공제액 기준 변경
    	// 연금보험료공제액
        if (monthly_salary < 250000) {
            pension_deduction = 250000 * 0.045 * 12;    // 연금보험료 공제금액 하한
        } else if (monthly_salary > 3980000) {
            pension_deduction = 3980000 * 0.045 * 12;   // 연금보험료 공제금액 상한
        } else {
            pension_deduction = fn_cut_off( fn_cut_off(monthly_section ,1000) * 0.045,10) * 12;
    	}

    	//alert("월급여액(비과세소득 제외)천원미만 절사: " + fn_cut_off(monthly_section ,1000) );
    	//alert("연금보험료공제액 : " + pension_deduction); // 6명일 때 2,149,200


    	
    	// 특별공제액
    	// 2015-06-26 기준 변경
    	
    	// 3,000만원 이하
    	if (annual_salary <= 30000000)
    	{
    		// 공제대상자 2명 이하인 경우 
    		// 360만원 + 연간 총급여액의 4%
    		if ( dependency < 3 )
    		{
    			special_deduction = 3600000 + Math.floor (annual_salary * 4 / 100) ; // 360만원 + 연간 총급여액의 4%
    		}
    		else 
    		{
    			/*
    			//공제대상자 3명 이상인 경우 500만원 + 연간 총급여액의 7% + 연간총급여액 중 4천만원을 초과하는 금액의 4%
    			// (60,120,000원×5%)+[(60,120,000원-40,000,000원) ×4%]
    			*/
    			special_deduction = 5000000 + Math.floor(annual_salary * 7 /100 ) + Math.floor(( annual_salary - 40000000) * 4 /100) ;
    		}
    	}

    	// 3,000만원 초과, 4,500만원 이하
    	else if (annual_salary > 30000000 && annual_salary <= 45000000 )
    	{
    		// 공제대상자 2명 이하인 경우
    		// 360만원 + 연간 총급여액의 4% - 연간 총급여액 중 3천만원 초과 금액의 5%
    		if ( dependency < 3 )
    		{
    			special_deduction = 3600000 + Math.floor( annual_salary *4/100) - Math.floor(( annual_salary - 30000000 ) * 5/100) ; // 360만원 + 연간 총급여액의 4%
    		}
    		else 
    		{
    			/*
    			//공제대상자 3명 이상인 경우 500만원 + 연간 총급여액의 7% + 연간총급여액 중 4천만원을 초과하는 금액의 4%
    			// (60,120,000원×5%)+[(60,120,000원-40,000,000원) ×4%]
    			*/
    			special_deduction = 5000000 + Math.floor(annual_salary *7 /100 )  - Math.floor( ( annual_salary - 30000000) * 5/100)  + Math.floor(( annual_salary - 40000000) * 4 /100);
    		}
    	}
    	
    	// 4,500만원 초과 7,000만원 이하
    	else if (annual_salary > 45000000 && annual_salary <= 70000000 )
    	{
    		// 공제대상자 2명 이하인 경우
    		// 360만원 + 연간 총급여액의 2
    		if ( dependency < 3 )
    		{
    			special_deduction = 3600000 + Math.floor( annual_salary *2/100);
    		}
    		else 
    		{
    			/*
    			//공제대상자 3명 이상인 경우 500만원 + 연간 총급여액의 5%
    			*/
    			special_deduction = 5000000 + Math.floor(annual_salary * 5/100 ) + Math.floor(( annual_salary - 40000000) * 4/100) ;
    		}
    	}
    	// 7,000만원 초과, 1억2,000만원 이하
    	else if (annual_salary > 70000000 && annual_salary <= 120000000)
    	{
    		// 공제대상자 2명 이하인 경우
    		// 360만원 + 연간 총급여액의 1%
    		if ( dependency < 3 )
    		{
    			special_deduction = 3600000 + Math.floor( annual_salary *1/100);
    		}
    		else 
    		{
    			/*
    			//공제대상자 3명 이상인 경우 500만원 + 연간 총급여액의 3%
    			*/
    			special_deduction = 5000000 + Math.floor(annual_salary *3/100 ) + Math.floor(( annual_salary - 40000000) *4/100);
    		}
    	}

//    	alert("특별소득공제  : " + special_deduction );

    	//special_deduction = (dependency < 3) ? (1100000 + (annual_salary * 0.025)) : (2500000 + (annual_salary * 0.05) + Math.max( (annual_salary-40000000) * 0.05, 0));


    	// 과세표준액 (근로소득금액 - 인적공제액 - 연금보험료공제액 - 특별공제액)
    	//				근로소득금액 - 인적공제 - 연금보험료공제 - 특별소득공제
    	assessment_standard = earned_income - personal_allowance - pension_deduction - special_deduction;
//    	alert("과세표준액  : " + assessment_standard );


    	// 산출세액
    	// 2015-06-26 기준 변경
    	if (assessment_standard < 1) {
    		calculated_tax = 0;
    	} else if (assessment_standard <= 12000000) {	// 과세표준액이 1200만원 이하인 경우
    		calculated_tax = assessment_standard * 0.06;
    	} else if (assessment_standard <= 46000000) {	// 과세표준액이 4600만원 이하인 경우
    		calculated_tax = 720000 + (assessment_standard - 12000000) * 0.15;
    	} else if (assessment_standard <= 88000000) {	// 과세표준액이 8800만원 이하인 경우
    		calculated_tax = 5820000 + (assessment_standard - 46000000) * 0.24;
    	} else if (assessment_standard <= 150000000 )
    	{
    		// 2015-06-26 기준 추가 과세표준액이 1억5천 이하
    		calculated_tax = 15900000 + (assessment_standard - 88000000) * 0.35;
    	}
    	else {															// 과세표준액이  1억5천 초과인 경우
    		calculated_tax = 37600000 + (assessment_standard - 150000000) * 0.35;
    	}

//    	alert("산출세액  : " + calculated_tax );

    	
    	// 근로소득세액공제액
    	
    	var earned_income_tax_deduction_limit =0; // 2015-06-26 근로소득세액공제액 한도 추가


    	// 총금여액이 55000000 이하인경우 66만원 한도
    	if (annual_salary <= 55000000 )
    	{
    		earned_income_tax_deduction_limit = 660000;

    	}	
    	// 총금여액이 55000000 초과 7천 이하 63만원 한도
    	else if (annual_salary > 55000000 && annual_salary <= 70000000 )
    	{
    		earned_income_tax_deduction_limit = 630000;
    	}
    	
    	// 총금여액이 7천 초과 50만원 한도
    	else if (annual_salary > 70000000)
    	{
    		earned_income_tax_deduction_limit = 500000;
    	}

    	earned_income_tax_deduction = (calculated_tax > 500000) ? (275000 + (calculated_tax - 500000) * 0.3) : (calculated_tax * 0.55);

    	// 근로소득세가 한도보다 높은가?
    	// 근로소득세가 한도 이상일 경우 한도만큼 제한
    	earned_income_tax_deduction = (earned_income_tax_deduction > earned_income_tax_deduction_limit) ? earned_income_tax_deduction_limit : earned_income_tax_deduction;

    	//earned_income_tax_deduction = (earned_income_tax_deduction>500000) ? 500000 : earned_income_tax_deduction;	// 근로소득세액공제액 50만원 초과시
    	
//    	alert("근로소득세액공제액 한도 : " + earned_income_tax_deduction_limit );
//    	alert("근로소득세액공제액  : " + earned_income_tax_deduction );

    	// 결정세액 (산출세액 - 근로소득세액공제액)
    	var settled_tax = Math.floor(calculated_tax - earned_income_tax_deduction);
    	
    	//alert("결정세액  : " + settled_tax );

    	
    	// 소득세 (결정세액/12)
    	var income_tax = fn_cut_off(Math.floor(settled_tax/12), 10);
    	income_tax = ( income_tax > 0 ) ? income_tax : 0;
    	$("#income_tax").val( income_tax );

    	// 주민세
    	$("#inhabitants_tax").val( income_tax > 0 ? fn_cut_off( (income_tax/10), 10) : 0 );
    	

    	// 국민연금
    	var national_pension = 0;
    	if (monthly_salary < 220000) {
    		national_pension = fn_cut_off(Math.floor(220000 * 4.5 / 100), 10);
    	} else if (monthly_salary >= 220000 && monthly_salary < 3600000) {
    		national_pension = fn_cut_off(Math.floor(monthly_salary * 4.5 / 100), 10);	// 월급여액(비과세액 제외) 4.5%
    	} else {
    		national_pension = fn_cut_off(Math.floor(3600000 * 4.5 / 100), 10);
    	}
    	$("#national_pension").val(national_pension);
    	
    	/*
    	// 건강보험
    	var health_insurance = 0;
    	if (monthly_salary < 280000) {
    		health_insurance = fn_cut_off(Math.floor(280000 * 2.82 / 100 ), 10);
    	} else if (monthly_salary >= 280000 && monthly_salary < 65790000) {
    		health_insurance = fn_cut_off(Math.floor(monthly_salary * 2.82 / 100 ), 10);	// 월급여액(비과세액 제외) 2.82%
    	} else {
    		health_insurance = fn_cut_off(Math.floor(65790000 * 2.82 / 100 ), 10);
    	}
    	$("#health_insurance").val(health_insurance);
    	
    	// 장기요양
    	$("#longterm_insurance").val(fn_cut_off(Math.floor(health_insurance * 6.55 / 100 ),10));
    	
    	// 고용보험
    	$("#unemployment_insurance").val(fn_cut_off(Math.floor( (monthly_salary + tax_free) * 0.45 / 100 ), 10));	// 월급여액 0.45%
    	
    	*/


    	// 건강보험
    	var health_insurance = 0;
    	if (monthly_salary < 280000) {
    		health_insurance = fn_cut_off(Math.floor(280000 * 3.035 / 100 ), 10);
    	} else if (monthly_salary >= 280000 && monthly_salary < 65790000) {
    		health_insurance = fn_cut_off(Math.floor(monthly_salary * 3.035 / 100 ), 10);	// 월급여액(비과세액 제외) 2.82%
    	} else {
    		health_insurance = fn_cut_off(Math.floor(65790000 * 3.035 / 100 ), 10);
    	}
    	$("#health_insurance").val(health_insurance);
    	
    	// 장기요양
    	$("#longterm_insurance").val(fn_cut_off(Math.floor(health_insurance * 6.55 / 100 ),10));
    	
    	// 고용보험
    	$("#unemployment_insurance").val(fn_cut_off(Math.floor(monthly_salary * 0.65 / 100 ), 10));	// 월급여액 0.65%


    	// 공제액 합계
    	$("#total_exemption").val(
    		fn_cut_off(
    			parseInt($("#income_tax").val()) 
    			+ parseInt($("#inhabitants_tax").val()) 
    			+ parseInt($("#national_pension").val()) 
    			+ parseInt($("#health_insurance").val()) 
    			+ parseInt($("#longterm_insurance").val()) 
    			+ parseInt($("#unemployment_insurance").val())
    		, 10)
    	);
    	
    	// 예상 실수령액
    	var expected_receipt = fn_cut_off( monthly_salary + tax_free - parseInt($("#total_exemption").val()), 10);
    	expected_receipt = (expected_receipt < 0) ? 0 : expected_receipt;
    	$("#expected_receipt").val( commify(expected_receipt) );
    	$("#expected_receipt").removeClass("i_style04");
    	$("#expected_receipt").addClass("i_style05");
    	
    	$("#result_box input").each(function() {
    		$(this).val( commify($(this).val()) );
    	});
    	
    	
    	$("#result_box").addClass("result_box_active");
    	
    
    }


    /*
    *	부양가족수에 따른 20세이하 자녀수 활성화 여부
    */
    function fn_chk_dependency(obj) {
    	obj = obj || $("#dependency");
    	if (fn_chk_numeric_Salary(obj)) {
    		var dependency = parseInt(obj.value);
    		if(dependency ==1) {
    			$("#children01").attr("checked",true);
    			$("input[name=underage_children]").attr("disabled",true);
    		} else if(dependency == 2) {
    			$("input[name=underage_children]").each(function(idx) {
    				$(this).attr("disabled",(idx==2));
    			});
    		} else if(dependency > 2) {
    			$("input[name=underage_children]").attr("disabled",false);
    		} else {
    			$("input[name=underage_children]").attr("disabled",true);
    		}
    	}
    }

    /*
    *	비과세액 직접입력여부
    */
    function fn_toggle_input(obj,bool) {
    	bool = bool || false;
    	$(obj).attr("disabled", (bool?false:true));
    	if($('#di').attr('checked')!=bool)	$('#di').attr('checked', bool);
    	if(bool) {
    		$(obj).val("").focus();
    		$(obj).addClass("i_style02");
    		$(obj).removeClass("i_style01");
    		
    	} else {
    		$(obj).val("100,000");
    		$(obj).addClass("i_style01");
    		$(obj).removeClass("i_style02");
    	}
    }

    /*
    *	단위 절사
    */
    function fn_cut_off(num,unit) {
    	num = num || 0;
    	unit = unit || 10;
    	
    	var retnum = parseInt( num / unit ) * unit;
    	return retnum;
    }

    /*
    *	숫자 단위 comma 표시
    */
    function commify(n) {
    	var reg = /(^[+-]?\d+)(\d{3})/;	// 정규식
    	n += '';									// 숫자를 문자열로 변환

    	while (reg.test(n))
    		n = n.replace(reg, '$1' + ',' + '$2');

    	return n;
    }

    /*
    *	숫자만 입력되도록
    */
    function fn_chk_numeric(obj) {
    	var str = $(obj).val().split(',').join('');
    	var var_normalize = /[^0-9]/gi; //정규식
    	
    	if (var_normalize.test(str)) {
    		alert("숫자만 입력하실 수 있습니다.");
    		$(obj).val(str.replace(var_normalize,""));
    		return false;
    	} else {
    		return true;
    	}
    }

    /*
    *	숫자만 입력되도록
    */
    function fn_chk_numeric_Salary(obj) {
        var str = $(obj).val().split(',').join('');
        var var_normalize = /[^0-9]/gi; //정규식

        if (var_normalize.test(str)) {
            alert("숫자만 입력하실 수 있습니다.");
            $(obj).val(str.replace(var_normalize, ""));
            return false;
        } else {
            return true;
        }
    }

    /*
    *	숫자 -> 한글 변환 함수
    */
    function fn_convert_korean(numstr) {
    	var num = parseInt(numstr);
    	if (num == 0) return '영';
    	var phonemic = ['','일','이','삼','사','오','육','칠','팔','구'];
    	var unit = ['','','십','백','천','만','십만','백만','천만','억','십억','백억','천억','조','십조','백조'];
    	var ret = '';
    	var part = new Array();
    	for (var x=0; x< numstr.length; x++) part[x] = numstr.substring(x,x+1);
    	for (var i=0, cnt = numstr.length; cnt > 0; --cnt,++i) {
    		p = phonemic[part[i]];
    		p+= (p) ? (cnt>4 && phonemic[part[i+1]]) ? unit[cnt].substring(0,1) : unit[cnt] : '';
    		ret+= p;
    	}
    	return ret;
    }

    /*
    *	숫자 -> 한글 변환 표시
    */
    function fn_disp_korean(obj,objid) {
        if (fn_chk_numeric_Salary(obj)) {
    		objid = objid || 'korean_num';
    		var convertstr = fn_convert_korean(obj.value.split(',').join(''));
    		$("#"+objid).html(convertstr);
    	}
    }

    /*
    *	입력값 comma 표시
    */
    function fn_set_commval(obj) {
    	var setval = commify(obj.value.split(',').join(''));
    	obj.value = setval;
    }