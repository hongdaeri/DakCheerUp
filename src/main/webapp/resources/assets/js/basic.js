
function getEffect(msg)
{
	switch(msg)
	{
	case "save":
		$("#LoadMsgDiv h2").html("<i class='fa fa-save'> 저장되었습니다.</i>");
		break;
	case "create-jaso":
		$("#LoadMsgDiv h2").html("<i class='fa fa-file-text-o'> 자기소개서가 생성되었습니다.</i>");
		break;
	case "create-group":
		$("#LoadMsgDiv h2").html("<i class='fa fa-folder-o'> 그룹이 생성되었습니다.</i>");
		break;
	case "create-note":
		$("#LoadMsgDiv h2").html("<i class='fa fa-paperclip'> 노트가 생성되었습니다.</i>");
		break;
	case "create-qna":
		$("#LoadMsgDiv h2").html("<i class='fa fa-plus-square'> 문항이 추가되었습니다.</i>");
		break;
	case "delete":
		$("#LoadMsgDiv h2").html("<i class='fa fa fa-trash-o'> 삭제되었습니다.</i>");
		break;
	case "restore":
		$("#LoadMsgDiv h2").html("<i class='fa fa-history'> 복구되었습니다.</i>");
		break;
	case "interest":
		$("#LoadMsgDiv h2").html("<i class='fa fa-star'> 등록되었습니다.</i>");
		break;	
		
	}
	
	
	$("#LoadMsgDiv").show();
	$("#LoadMsgDiv").fadeOut(2000);
}
