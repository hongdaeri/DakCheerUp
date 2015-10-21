
	
$(document).ready(function() {
	
	/* 메뉴 구성에 대한 로직 */ 
	$("#sajun-div").hide();
	$("#note-div").hide();
	$("#new-file-div").hide();
	$("#new-group-div").hide();
	
	
	$("#new-file-up").click(function(){
		$("#new-file-div").fadeToggle("fast");
		$("#sajun-div").hide();
		$("#note-div").hide();
		$("#new-group-div").hide();
	});
	
	$("#new-group-up").click(function(){
		$("#new-group-div").fadeToggle("fast");
		$("#sajun-div").hide();
		$("#note-div").hide();
		$("#new-file-div").hide();
	});
	
	$("#sajun-up").click(function(){
		$("#sajun-div").fadeToggle("fast");
		$("#note-div").hide();
		$("#new-file-div").hide();
		$("#new-group-div").hide();
	});
	

	$("#note-up").click(function(){
		$("#note-div").fadeToggle("fast");
		$("#sajun-div").hide();
		$("#new-file-div").hide();
		$("#new-group-div").hide();
	});
	
	
	$("#close-new-file-div").click(function(){
		$("#new-file-div").hide();
	});
		
	$("#close-new-group-div").click(function(){
		$("#new-group-div").hide();
	});
	
	$("#close-note-div").click(function(){
		$("#note-div").hide();
	});
		
	$("#close-sajun-div").click(function(){
		$("#sajun-div").hide();
	});
	
	$("#qna-tab-prev").click();
	$("#qna-tab-1").click();
	

	/* 메뉴 구성에 대한 로직 끝  */ 
	
	
	// 이벤트 처리 : 질문 추가  
	$("#qna-add").click(function(){
		// 액션 메서드명 명시 
		$("input[name='actionMethod']").val("qnaAdd");
		//파일 이름 처리 
		$("#newFileName").val($("#fileName").val());
		//form submit
		$("#JasoUpdate").submit();
	});
	
	
	// 이벤트 처리 : 질문 관심등록 
	$(".qna-interest").click(function(){
		
		// 타겟 인덱스 명시 
		$("input[name='targetQnaNo']").val($(this).attr('name'));
		// 액션 메서드명 명시 
		$("input[name='actionMethod']").val("qnaInterest");
		//파일 이름 처리 
		$("#newFileName").val($("#fileName").val());
	
		//form submit
		$("#JasoUpdate").submit();
	});
	
	
	// 이벤트 처리 : 질문 휴지통 
	$(".qna-trash").click(function(){
		if($(".qna-trash").length != 1)
		{
			// 타겟 인덱스 명시 
			$("input[name='targetQnaNo']").val($(this).attr('name'));
			
			// 액션 메서드명 명시 
			$("input[name='actionMethod']").val("qnaTrash");
			//파일 이름 처리 
			$("#newFileName").val($("#fileName").val());
			// 타겟 인덱스 명시 
			$("input[name='targetQnaNo']").val($(this).attr('name'));
			//form submit
			$("#JasoUpdate").submit();
		}
		else
		{
			alert("자소서 하나당 최소한 하나의 문항이 있어야 합니다.");
		}
	});
	
	// 이벤트 처리 : 파일 관심등록 
	$("#file-interest").click(function(){
		var target = $(this);
		var targetValue = target.val();
		if(targetValue == 'Y')
			target.val("N");
		else
			target.val("Y");
		
		// 액션 메서드명 명시 
		$("input[name='actionMethod']").val("fileInterest");
		//파일 이름 처리 
		$("#newFileName").val($("#fileName").val());
	
		//form submit
		$("#JasoUpdate").submit();
	});
	
	// 이벤트 처리 : 파일 휴지통 
	$("#file-trash").click(function(){
		var target = $(this);
		var targetValue = target.val();
		if(targetValue == 'Y')
			target.val("N");
		else
			target.val("Y");
		
		// 액션 메서드명 명시 
		$("input[name='actionMethod']").val("fileTrash");
		//파일 이름 처리 
		$("#newFileName").val($("#fileName").val());
	
		//form submit
		$("#JasoUpdate").submit();
	});
	
	// 이벤트 처리 : 저장하기 
	$("#qnaSave").click(function(){
		// 액션 메서드명 명시 
		$("input[name='actionMethod']").val("save");
		//파일 이름 처리 
		$("#newFileName").val($("#fileName").val());
		//form submit
		$("#JasoUpdate").submit();
	});

});
