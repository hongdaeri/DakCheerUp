
/* 프린트 출력대상 선택 UI */
	
	// 1. 이력서 출력 radio 버튼 클릭 메서드 
	$("#print-resume-label").click(function(){
		$("#print-resume-label").removeClass("btn-white");
		$("#print-resume-label").addClass("btn-success");
		
		$("#non-print-resume-label").removeClass("btn-success");
		$("#non-print-resume-label").addClass("btn-white");
		
		$("#print-resume-contents").slideDown("slow").show();
		
	});
	
	// 2. 이력서 미출력 radio 버튼 클릭 메서드 
	$("#non-print-resume-label").click(function(){
		$("#print-resume-label").removeClass("btn-success");
		$("#print-resume-label").addClass("btn-white");
		
		$("#non-print-resume-label").removeClass("btn-white");
		$("#non-print-resume-label").addClass("btn-success");
		
		$("#print-resume-contents").slideUp("slow").hide();
		
	});
	
	// 3. 자소서 출력 radio 버튼 클릭 메서드 
	$("#print-jaso-label").click(function(){
		$("#print-jaso-label").removeClass("btn-white");
		$("#print-jaso-label").addClass("btn-success");
		
		$("#non-print-jaso-label").removeClass("btn-success");
		$("#non-print-jaso-label").addClass("btn-white");
		
		$("#print-jaso-contents").slideDown("slow").show();
	});
	
	// 4. 자소서 미출력 radio 버튼 클릭 메서드 
	$("#non-print-jaso-label").click(function(){
		$("#print-jaso-label").removeClass("btn-success");
		$("#print-jaso-label").addClass("btn-white");
		
		$("#non-print-jaso-label").removeClass("btn-white");
		$("#non-print-jaso-label").addClass("btn-success");
		
		$("#print-jaso-contents").slideUp("slow").hide();
	});
	
	


	
	// 이력서 전체 선택 	
    $('#resume-select-all').click(function(e) {   
    	
    	var chk = $("#resume-select-all").is(":checked");//.attr('checked');
        if(!chk)           
        {
            $('#table-resume tr').removeClass('active');
            $(".print-select-resume input").attr('checked', false);
        } else {
            $('.table-email .table-resume tr').addClass('active');
            $(".print-select-resume input").attr('checked', true);
        }
    });
    
	// 자소서 전체 선택 	
    $('#jaso-select-all').click(function(e) {        
    	var chk = $("#jaso-select-all").is(":checked");//.attr('checked');
        if(!chk) 
        {
             $('#table-jaso tr').removeClass('active');
             $(".print-select-jaso input").attr('checked', false);
         } else {
             $('.table-email .table-jaso tr').addClass('active');
             $(".print-select-jaso input").attr('checked', true);
         }
    });

    
    
    // 템플릿양식선택 - 템플릿 선택 - pt1    
    $('#pt1').click(function(e) {    
    	$("#print-template").val("pt1");
    	$("#pt1-tumb").removeClass("print-template-select-n");
    	$("#pt1-tumb").addClass("print-template-select-y");
    	$("#pt1-preview").animate({width:'toggle'},350).show();
	    	
    });
    
    // 프린트 미리보기 버튼 클릭 --> 유효성 체크 --> 폼전송
    $('#print-btn-preview').click(function(e) {    
    	if($("#print-template").val().length < 1)
    	{
    		alert("Step 3. 템플릿 양식을 먼저 선택해 주세요.");
    		return true;
    	}
    	else
    	{
	    	$("#print-action").val("print");
	    	$('#print-form').submit();
    	}
	    	
    });

    
// 프린트 메서드 
function printHTML() {
  Pwin = window.open("/print/preview","","width=780,height=600,scrollbars=1");
  wdata ="<HTML>";
  wdata += document.getElementById("print").innerHTML;
  wdata += "";
  Pwin.document.write(wdata);
  Pwin.window.print();
  Pwin.window.location.reload();
}

function print() {
	window.print();
}
// 프린트 폼 Post전송 메서드
function onSubmit(){
	 var myForm = document.printForm;
	 var url = "/print/preview";
	 window.open("" ,"preview", 
	   "toolbar=no, width=800, height=600, directories=no, status=no,    scrollorbars=1"); 
	 myForm.action =url; 
	 myForm.method="post";
	 myForm.target="printForm";
	 myForm.submit();
	 
	 
}
	
	