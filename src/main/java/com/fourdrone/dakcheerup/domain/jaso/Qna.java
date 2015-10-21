/**
 * TB_JASO_QNA 테이블 대응 VO 클래스 
 */
package com.fourdrone.dakcheerup.domain.jaso;
import java.sql.Timestamp;

/**
 * @author h0ngz
 *
 */
public class Qna{	
	private String memberId;				//회원_아이디 
	private int qnaNo;						//문항_번호 
	private int fileNo;						//파일_번호 	
	
	private String qnaQuestion;				//문항_질문 
	private String qnaAnswer;				//문항_답변 
	
	
	private String qnaInterestYn;			//문항_관심_유무 
	private Timestamp qnaInterestDate;		//문항_관심_등록일 	
	
	private String qnaTrash;
	private Timestamp qnaTrashDate;
	
	private Timestamp qnaRegDate;			//문항_등록일 
	private Timestamp qnaEditDate;			//문항_수정
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getQnaQuestion() {
		return qnaQuestion;
	}
	public void setQnaQuestion(String qnaQuestion) {
		this.qnaQuestion = qnaQuestion;
	}
	public String getQnaAnswer() {
		return qnaAnswer;
	}
	public void setQnaAnswer(String qnaAnswer) {
		this.qnaAnswer = qnaAnswer;
	}
	public String getQnaInterestYn() {
		return qnaInterestYn;
	}
	public void setQnaInterestYn(String qnaInterestYn) {
		this.qnaInterestYn = qnaInterestYn;
	}
	public Timestamp getQnaInterestDate() {
		return qnaInterestDate;
	}
	public void setQnaInterestDate(Timestamp qnaInterestDate) {
		this.qnaInterestDate = qnaInterestDate;
	}
	public String getQnaTrash() {
		return qnaTrash;
	}
	public void setQnaTrash(String qnaTrash) {
		this.qnaTrash = qnaTrash;
	}
	public Timestamp getQnaTrashDate() {
		return qnaTrashDate;
	}
	public void setQnaTrashDate(Timestamp qnaTrashDate) {
		this.qnaTrashDate = qnaTrashDate;
	}
	public Timestamp getQnaRegDate() {
		return qnaRegDate;
	}
	public void setQnaRegDate(Timestamp qnaRegDate) {
		this.qnaRegDate = qnaRegDate;
	}
	public Timestamp getQnaEditDate() {
		return qnaEditDate;
	}
	public void setQnaEditDate(Timestamp qnaEditDate) {
		this.qnaEditDate = qnaEditDate;
	}


}
