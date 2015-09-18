/**
 * TB_RESUME_BROTHER(이력서_형제관계) 테이블 대응 VO 클래스
 */
package com.fourdrone.dakcheerup.domain.resume;

import java.sql.Timestamp;

/**
 * @author h0ngz
 *
 */
public class Brother {
	private String memberId;			//회원_아이디
	private String brotherMale;			//형제관계_몇남 
	private String brotherFemale;			//형제관계_몇녀중 
	private String brotherMe;				//형제관계_몇째
	private Timestamp brotherRegDate;	//형제관계_등록일 
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getBrotherMale() {
		return brotherMale;
	}
	public void setBrotherMale(String brotherMale) {
		this.brotherMale = brotherMale;
	}
	public String getBrotherFemale() {
		return brotherFemale;
	}
	public void setBrotherFemale(String brotherFemale) {
		this.brotherFemale = brotherFemale;
	}
	public String getBrotherMe() {
		return brotherMe;
	}
	public void setBrotherMe(String brotherMe) {
		this.brotherMe = brotherMe;
	}
	public Timestamp getBrotherRegDate() {
		return brotherRegDate;
	}
	public void setBrotherRegDate(Timestamp brotherRegDate) {
		this.brotherRegDate = brotherRegDate;
	}
	
	
}
