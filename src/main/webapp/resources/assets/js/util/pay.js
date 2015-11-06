$("#payMonthDiv").hide();
$("#non-taxable-custom-div").hide();

    
	// 월급선택시 뷰 변경
    $("#payOption-month").click(function(){
   		$("#payYearDiv").hide();
    	$("#payMonthDiv").show();
    	$("#payLabel").text('월급');
	});
    
	// 연봉선택시 뷰 변경
    $("#payOption-year").click(function(){
   		$("#payYearDiv").show();
    	$("#payMonthDiv").hide();
    	$("#payLabel").text('연봉');
	});
    
    $("#custom-non-taxable").click(function(){
    	if($("input:checkbox[id='custom-non-taxable']").is(":checked") == true)
    	{
    		$("#non-taxable-div").attr("disabled",false);
    		$("#non-taxable-div").focus();
    	}
    	else
    	{
    		$("#non-taxable-div").attr("disabled",true);
    	}
    	
	});