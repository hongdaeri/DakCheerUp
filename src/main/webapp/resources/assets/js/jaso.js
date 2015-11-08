
	
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
		
		// 액션 메서드명 명시 
		$("input[name='actionMethod']").val("fileInterest");
		//파일 이름 처리 
		$("#newFileName").val($("#fileName").val());
	
		//form submit
		$("#JasoUpdate").submit();
	});
	
	// 이벤트 처리 : 파일 휴지통 
	$("#file-trash").click(function(){
		
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




/*
*	팝업 메뉴
*/
function fn_pop(num) {
	num = num || 1;
	if(num == 1) {
		var popWin1 = window.open(" http://speller.cs.pusan.ac.kr/","popWin2","width=437,height=543, scrollbars=yes");
		popWin1.focus();
	} else if(num==2) {
		var popWin2 = window.open("http://loanword.cs.pusan.ac.kr/","popWin1","width=437,height=585,scrollbars=yes");
		popWin2.focus();
	} else if(num==3) {
		var popWin3 = window.open("http://s.lab.naver.com/autospacing/","popWin3","width=823,height=662,scrollbars=yes");
		popWin3.focus();
	} else if(num==4) {
		window.open("/info/data/list_intro.asp");
	}
}



/*
*	글자수 체크
*/
function fn_letters_count(obj, tabNum) {
	obj = obj || $("#input_letters");
	var str = $(obj).val();
	var strtrim = str.split(" ").join("");
	var tab = "#nav-tab-" + tabNum;
	
	// 공백포함 글자수 & 바이트 수 
	$(tab + " #charNum").text(commify(str.length));
	$(tab + " #charNumByte").text(commify(calByte(str)));
	
	//공백 미포함 글자수 
	$(tab + " #charNumNS").text(commify(strtrim.length));
	$(tab + " #charNumNSByte").text(commify(calByte(strtrim)));
}


/*
 *  바이트 카운터
 */

function calByte(str) 
{
    var tcount = 0;
    var onechar;
    for (i=0;i<str.length;i++) 
    {
        if (str.charCodeAt(i) > 128) {
            tcount += 2;
        } else {
            tcount++;
        }
    }

    return tcount;
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


