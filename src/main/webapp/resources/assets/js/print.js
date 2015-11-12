
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

	
	