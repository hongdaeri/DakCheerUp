/**
 * 
 */

function toggle(className, obj) {
    var $input = $(obj);
    if ($input.prop('checked')) $(className).hide();
    else $(className).show();
}


/****************************************************
 *    RESUME LANGUAGE-EXAM OPTION AUTO COMPLATE
 *
 ****************************************************/

//각 분류에 대한 배열
LangExamOp=new Array(11);
LangExamOp[0]="-- 선택 --";			//기본값
LangExamOp[1]=new Array(64);		//영어
LangExamOp[2]=new Array(20);		//일어
LangExamOp[3]=new Array(17);		//중국어
LangExamOp[4]=new Array(15);		//독일어
LangExamOp[5]=new Array(15);		//불어
LangExamOp[6]=new Array(6);			//스페인어
LangExamOp[7]=new Array(6);			//러시아어
LangExamOp[8]=new Array(2);			//이탈리아어
LangExamOp[9]=new Array(4);			//한국어
LangExamOp[10]=new Array(7);		//한자


//영어
LangExamOp[1][0]	="TOEIC	";
LangExamOp[1][1]	="TOEFL	";
LangExamOp[1][2]	="TEPS	";
LangExamOp[1][3]	="OPIC 영어	";
LangExamOp[1][4]	="S-ETAT2급	";
LangExamOp[1][5]	="S-TOED	";
LangExamOp[1][6]	="TOED	";
LangExamOp[1][7]	="EPQT	";
LangExamOp[1][8]	="EVQT	";
LangExamOp[1][9]	="EC-TOP(TOQ)	";
LangExamOp[1][10]	="CPET	";
LangExamOp[1][11]	="G-TELP	";
LangExamOp[1][12]	="G-ETAT	";
LangExamOp[1][13]	="S-ETAT1급	";
LangExamOp[1][14]	="공무원영어	";
LangExamOp[1][15]	="관광통역안내사 영어	";
LangExamOp[1][16]	="무역영어	";
LangExamOp[1][17]	="영어 교원자격증	";
LangExamOp[1][18]	="AP	";
LangExamOp[1][19]	="Cambridge Certification CAE	";
LangExamOp[1][20]	="Cambridge Certification CPE	";
LangExamOp[1][21]	="Cambridge Certification FCE	";
LangExamOp[1][22]	="EFB	";
LangExamOp[1][23]	="ESPT	";
LangExamOp[1][24]	="FLEX 영어	";
LangExamOp[1][25]	="GMAT	";
LangExamOp[1][26]	="GRE	";
LangExamOp[1][27]	="iB-SET	";
LangExamOp[1][28]	="IELTS	";
LangExamOp[1][29]	="IET	";
LangExamOp[1][30]	="JET	";
LangExamOp[1][31]	="JET Speacking	";
LangExamOp[1][32]	="J-TOED	";
LangExamOp[1][33]	="LSAT	";
LangExamOp[1][34]	="PELT	";
LangExamOp[1][35]	="PELT jR	";
LangExamOp[1][36]	="PELT KIDS	";
LangExamOp[1][37]	="PELT MAIN	";
LangExamOp[1][38]	="PELT PLUS	";
LangExamOp[1][39]	="PELT STANDARD	";
LangExamOp[1][40]	="PET(Preliminary English Test)	";
LangExamOp[1][41]	="SAT	";
LangExamOp[1][42]	="SEPT	";
LangExamOp[1][43]	="SLEP	";
LangExamOp[1][44]	="SNULT 영어	";
LangExamOp[1][45]	="SSAT	";
LangExamOp[1][46]	="TCT 번역능력인정시험 영어	";
LangExamOp[1][47]	="TESOL	";
LangExamOp[1][48]	="TOEFL(CBT)	";
LangExamOp[1][49]	="TOEFL(iBT)	";
LangExamOp[1][50]	="TOEFL(PBT)	";
LangExamOp[1][51]	="TOEIC Bridge	";
LangExamOp[1][52]	="TOEIC Speaking and Writing Tests	";
LangExamOp[1][53]	="TOEIC Speaking Test	";
LangExamOp[1][54]	="TOEIC Writing Test	";
LangExamOp[1][55]	="TOP	";
LangExamOp[1][56]	="TOSEL	";
LangExamOp[1][57]	="TSE	";
LangExamOp[1][58]	="TWP	";
LangExamOp[1][59]	="Y-TOED	";
LangExamOp[1][60]	="BEC Vantage	";
LangExamOp[1][61]	="BEC Higher	";
LangExamOp[1][62]	="Versant	";
LangExamOp[1][63]	="WPT(Writing Proficiency Test)	";

//일어
LangExamOp[2][0]	="JLPT	";
LangExamOp[2][1]	="JPT	";
LangExamOp[2][2]	="JTRA	";
LangExamOp[2][3]	="EJU	";
LangExamOp[2][4]	="EJU 일본유학시험	";
LangExamOp[2][5]	="FLEX 일본어	";
LangExamOp[2][6]	="JET 프로그램	";
LangExamOp[2][7]	="문부성 장학생 선발시험	";
LangExamOp[2][8]	="일본어 교원자격증	";
LangExamOp[2][9]	="JLRT	";
LangExamOp[2][10]	="JTPA	";
LangExamOp[2][11]	="NIKKEN	";
LangExamOp[2][12]	="NPT	";
LangExamOp[2][13]	="SJPT	";
LangExamOp[2][14]	="SNULT 일어	";
LangExamOp[2][15]	="TCT 번역능력인정시험 일어	";
LangExamOp[2][16]	="J-TEST	";
LangExamOp[2][17]	="(新)JLPT	";
LangExamOp[2][18]	="JLT	";
LangExamOp[2][19]	="BJT	";

//중국어
LangExamOp[3][0] =	"HSK	";
LangExamOp[3][1] =	"BCT	";
LangExamOp[3][2] =	"C.TEST	";
LangExamOp[3][3] =	"CPT	";
LangExamOp[3][4] =	"FLEX 중국어	";
LangExamOp[3][5] =	"SNULT 중국어	";
LangExamOp[3][6] =	"TCT 번역능력인정시험 중국어	";
LangExamOp[3][7] =	"TSC	";
LangExamOp[3][8] =	"YCT	";
LangExamOp[3][9] =	"관광통역안내사 중국어	";
LangExamOp[3][10] =	"중국어 교원자격증	";
LangExamOp[3][11] =	"OPIC 중국어	";
LangExamOp[3][12] =	"HKC	";
LangExamOp[3][13] =	"대만화어문능력시험(SCTOP)	";
LangExamOp[3][14] =	"(新)HSK	";
LangExamOp[3][15] =	"(新)HSK회화	";
LangExamOp[3][16] =	"(新)BCT	";

//독일어
LangExamOp[4][0]	="DSH	";
LangExamOp[4][1]	="FLEX 독일어	";
LangExamOp[4][2]	="GDS	";
LangExamOp[4][3]	="KDS	";
LangExamOp[4][4]	="PWD	";
LangExamOp[4][5]	="SD1	";
LangExamOp[4][6]	="SD2	";
LangExamOp[4][7]	="SNULT 독일어	";
LangExamOp[4][8]	="TCT 번역능력인정시험 독일어	";
LangExamOp[4][9]	="TestDaF	";
LangExamOp[4][10]	="ZD	";
LangExamOp[4][11]	="ZDAF	";
LangExamOp[4][12]	="ZMP	";
LangExamOp[4][13]	="ZOP	";
LangExamOp[4][14]	="관광통역안내사 독일어	";

//불어
LangExamOp[5][0]	="DALF	";
LangExamOp[5][1]	="DELF	";
LangExamOp[5][2]	="DELF A1	";
LangExamOp[5][3]	="DELF A2	";
LangExamOp[5][4]	="DELF JUNIOR	";
LangExamOp[5][5]	="FLEX 프랑스어	";
LangExamOp[5][6]	="SNULT 프랑스어	";
LangExamOp[5][7]	="TCF	";
LangExamOp[5][8]	="TCT 번역능력인정시험 불어	";
LangExamOp[5][9]	="TEF	";
LangExamOp[5][10]	="관광통역안내사 불어	";
LangExamOp[5][11]	="DELF B1	";
LangExamOp[5][12]	="DELF B2	";
LangExamOp[5][13]	="DALF C1	";
LangExamOp[5][14]	="DALF C2	";

//스페인어
LangExamOp[6][0] =	"DELE	";
LangExamOp[6][1] =	"EPLE	";
LangExamOp[6][2] =	"FLEX 스페인어	";
LangExamOp[6][3] =	"SNULT 스페인어	";
LangExamOp[6][4] =	"TCT 번역능력인정시험 스페인어	";
LangExamOp[6][5] =	"OPIC 스페인어	";

//러시아어
LangExamOp[7][0]	=	"FLEX 러시아어	";
LangExamOp[7][1]	=	"SNULT 러시아어	";
LangExamOp[7][2]	=	"OPIC 러시아어	";
LangExamOp[7][3]	=	"TCT 번역능력인정시험 러시아어	";
LangExamOp[7][4]	=	"토르플	";
LangExamOp[7][5]	=	"관광통역안내사 노어	";

//이탈리아어
LangExamOp[8][0]	=	"CELI	";
LangExamOp[8][1]	=	"CILS	";

//한국어
LangExamOp[9][0] =	"국어능력인증시험	";
LangExamOp[9][1] =	"한국어 교원자격증	";
LangExamOp[9][2] =	"KBS 한국어능력시험	";
LangExamOp[9][3] =	"TOPIK	";

//한자
LangExamOp[10][0] =	"한자능력검정 (한국어문학회)	";
LangExamOp[10][1] =	"한자자격검정 (한자교육진흥회)	";
LangExamOp[10][2] =	"실용한자 (한국외국어평가원)	";
LangExamOp[10][3] =	"한국한자검정 (한국평생교육평가원)	";
LangExamOp[10][4] =	"한자급수자격검정 (한자급수자격검정)	";
LangExamOp[10][5] =	"한자능력자격검정 (한국한자한문능력개발원)	";
LangExamOp[10][6] =	"상공회의소 한자 (대한상공회의소)	";

//특정 채널을 선택하면 해당 카테고리를 생성
//function BuildLangExamOp(num)
//{
//
//	//해당 채널의 서브 카테고리 배열 길이만큼 반복
//	for(i=0;i<LangExamOp[num].length;i++)
//	{
//		//카테고리에 해당하는 콤보박스의 값을 채움
//		document.languageExam.newLangExamEName.options[i]=new Option(LangExamOp[num][i],LangExamOp[num][i]);
//		
//	}
//	//select 리스트 길이 지정
//	document.languageExam.newLangExamEName.length=LangExamOp[num].length;
//}


//특정 채널을 선택하면 해당 카테고리를 생성
function BuildLangExamOp(el)
{
	var selectIdx = el.selectedIndex;	
	var Tr = el.parentNode.parentNode;	
	var target = $(".LangExamEName");
	
	//해당 채널의 서브 카테고리 배열 길이만큼 반복
	for(i=0;i<LangExamOp[selectIdx].length;i++)
	{
		//카테고리에 해당하는 콤보박스의 값을 채움
		target[Tr.rowIndex-1].options[i]=new Option(LangExamOp[selectIdx][i],LangExamOp[selectIdx][i]);
		
	}
	//select 리스트 길이 지정
	target[Tr.rowIndex-1].length=LangExamOp[selectIdx].length;
}




