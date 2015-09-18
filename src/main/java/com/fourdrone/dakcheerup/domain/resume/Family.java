/**
 * TB_RESUME_FAMILY(이력서_가족관계) 테이블 대응 VO 클래스
 */
package com.fourdrone.dakcheerup.domain.resume;

import java.sql.Timestamp;

/**
 * @author h0ngz
 *
 */
public class Family {
	private String memberId;			//회원_아이디 
	private int familyNo;				//가족관계_번호 
	private String familyRelation;		//가족관계_관계 
	private String familyName;			//가족관계_성명 
	private String familyAge;				//가족관계_연령 
	private String familyJob;			//가족관계_현재직업 
	private String familyLive;			//가족관계_동거여부 (동거/비동거)
	private Timestamp familyRegDate;	//가족관계_등록일
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getFamilyNo() {
		return familyNo;
	}
	public void setFamilyNo(int familyNo) {
		this.familyNo = familyNo;
	}
	public String getFamilyRelation() {
		return familyRelation;
	}
	public void setFamilyRelation(String familyRelation) {
		this.familyRelation = familyRelation;
	}
	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}
	public String getFamilyAge() {
		return familyAge;
	}
	public void setFamilyAge(String familyAge) {
		this.familyAge = familyAge;
	}
	public String getFamilyJob() {
		return familyJob;
	}
	public void setFamilyJob(String familyJob) {
		this.familyJob = familyJob;
	}
	public String getFamilyLive() {
		return familyLive;
	}
	public void setFamilyLive(String familyLive) {
		this.familyLive = familyLive;
	}
	public Timestamp getFamilyRegDate() {
		return familyRegDate;
	}
	public void setFamilyRegDate(Timestamp familyRegDate) {
		this.familyRegDate = familyRegDate;
	}
	

}
