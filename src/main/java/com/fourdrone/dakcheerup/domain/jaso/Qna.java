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
	
	
	private boolean qnaInterestYn;			//문항_관심_유무 
	private Timestamp qnaInterestDate;		//문항_관심_등록일 	
	
	private Timestamp qnaRegDate;			//문항_등록일 
	private Timestamp qnaEditDate;			//문항_수정
	
	/**
	 * @return the memberId
	 */
	public String getMemberId() {
		return memberId;
	}
	/**
	 * @return the qnaNo
	 */
	public int getQnaNo() {
		return qnaNo;
	}
	/**
	 * @return the fileNo
	 */
	public int getFileNo() {
		return fileNo;
	}
	/**
	 * @return the qnaQuestion
	 */
	public String getQnaQuestion() {
		return qnaQuestion;
	}
	/**
	 * @return the qnaAnswer
	 */
	public String getQnaAnswer() {
		return qnaAnswer;
	}
	
	/**
	 * @return the qnaInterestYn
	 */
	public boolean isQnaInterestYn() {
		return qnaInterestYn;
	}
	/**
	 * @return the qnaInterestDate
	 */
	public Timestamp getQnaInterestDate() {
		return qnaInterestDate;
	}
	/**
	 * @return the qnaRegDate
	 */
	public Timestamp getQnaRegDate() {
		return qnaRegDate;
	}
	/**
	 * @return the qnaEditDate
	 */
	public Timestamp getQnaEditDate() {
		return qnaEditDate;
	}
	/**
	 * @param memberId the memberId to set
	 */
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	/**
	 * @param qnaNo the qnaNo to set
	 */
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	/**
	 * @param fileNo the fileNo to set
	 */
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	/**
	 * @param qnaQuestion the qnaQuestion to set
	 */
	public void setQnaQuestion(String qnaQuestion) {
		this.qnaQuestion = qnaQuestion;
	}
	/**
	 * @param qnaAnswer the qnaAnswer to set
	 */
	public void setQnaAnswer(String qnaAnswer) {
		this.qnaAnswer = qnaAnswer;
	}
	
	/**
	 * @param qnaInterestYn the qnaInterestYn to set
	 */
	public void setQnaInterestYn(boolean qnaInterestYn) {
		this.qnaInterestYn = qnaInterestYn;
	}
	/**
	 * @param qnaInterestDate the qnaInterestDate to set
	 */
	public void setQnaInterestDate(Timestamp qnaInterestDate) {
		this.qnaInterestDate = qnaInterestDate;
	}
	/**
	 * @param qnaRegDate the qnaRegDate to set
	 */
	public void setQnaRegDate(Timestamp qnaRegDate) {
		this.qnaRegDate = qnaRegDate;
	}
	/**
	 * @param qnaEditDate the qnaEditDate to set
	 */
	public void setQnaEditDate(Timestamp qnaEditDate) {
		this.qnaEditDate = qnaEditDate;
	}

}
