/**
 * TB_JASO_FILE 테이블 대응 VO 클래스 
 */
package com.fourdrone.dakcheerup.domain.jaso;

import java.sql.Timestamp;

/**
 * @author h0ngz
 *
 */
public class File {
	private int fileNo;					//파일_번호 
	private int groupNo;				//그룹_번호
	private String memberId;			//회원_아이디 
	
	private String fileName;			//파일_이름 
	
	private String fileTrashYn;			//파일_휴지통상태유무
	private Timestamp fileTrashDate;	//파일 휴지통 이동일 
	
	private String fileInterestYn;		//파일_관심_상태유무
	private Timestamp fileInterestDate;	//파일 관심 저장일 
		
	private Timestamp fileRegDate;		//파일_등록일 
	private Timestamp fileEditDate;		//파일_수정일 
	private Timestamp fileDeadlineDate;	//파일_마감일 
	
	
	private int qnaTotalCount;			//총질문수
	private int qnaAnswerCount;			//답변수

	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileTrashYn() {
		return fileTrashYn;
	}
	public void setFileTrashYn(String fileTrashYn) {
		this.fileTrashYn = fileTrashYn;
	}
	public Timestamp getFileTrashDate() {
		return fileTrashDate;
	}
	public void setFileTrashDate(Timestamp fileTrashDate) {
		this.fileTrashDate = fileTrashDate;
	}
	public String getFileInterestYn() {
		return fileInterestYn;
	}
	public void setFileInterestYn(String fileInterestYn) {
		this.fileInterestYn = fileInterestYn;
	}
	public Timestamp getFileInterestDate() {
		return fileInterestDate;
	}
	public void setFileInterestDate(Timestamp fileInterestDate) {
		this.fileInterestDate = fileInterestDate;
	}
	public Timestamp getFileRegDate() {
		return fileRegDate;
	}
	public void setFileRegDate(Timestamp fileRegDate) {
		this.fileRegDate = fileRegDate;
	}
	public Timestamp getFileEditDate() {
		return fileEditDate;
	}
	public void setFileEditDate(Timestamp fileEditDate) {
		this.fileEditDate = fileEditDate;
	}
	public Timestamp getFileDeadlineDate() {
		return fileDeadlineDate;
	}
	public void setFileDeadlineDate(Timestamp fileDeadlineDate) {
		this.fileDeadlineDate = fileDeadlineDate;
	}
	public int getQnaTotalCount() {
		return qnaTotalCount;
	}
	public void setQnaTotalCount(int qnaTotalCount) {
		this.qnaTotalCount = qnaTotalCount;
	}
	public int getQnaAnswerCount() {
		return qnaAnswerCount;
	}
	public void setQnaAnswerCount(int qnaAnswerCount) {
		this.qnaAnswerCount = qnaAnswerCount;
	}
	
	
	
}
