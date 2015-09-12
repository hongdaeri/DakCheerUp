package com.fourdrone.dakcheerup.domain.resume;

import java.sql.Timestamp;

public class ResumeConfig {
	
	private String memberId;					//회원아이디
	private String resumeConfigViewItem;		//이력서설정_뷰아이템
	private Timestamp resumeConfigLastRegDate;	//이력서설정_최근등록일
	
	/*
	 * ViewItem String analysis comment
	 * 
	 * 0	-	profile
	 * 1	-	additiol-profile
	 * 2	-	academic
	 * 3	-	oa
	 * 4	-	strength
	 * 5	-	license
	 * 6	-	lang-ability
	 * 7	-	lang-exam
	 * 8	-	award
	 * 9	-	career
	 * 10	-	voluntary
	 * 11	-	education
	 * 12	-	project
	 * 13	-	write
	 * 14	-	global
	 * 15	-	swot
	 * 16	-	none
	 * 17	-	none
	 * 18	-	none
	 * 19	-	none
	 * 20	-	none
	 * 
	 * exam) "YNYYNNNYYNNYNYNNNNNN"
	 * */
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getResumeConfigViewItem() {
		return resumeConfigViewItem;
	}
	public void setResumeConfigViewItem(String resumeConfigViewItem) {
		this.resumeConfigViewItem = resumeConfigViewItem;
	}
	public Timestamp getResumeConfigLastRegDate() {
		return resumeConfigLastRegDate;
	}
	public void setResumeConfigLastRegDate(Timestamp resumeConfigLastRegDate) {
		this.resumeConfigLastRegDate = resumeConfigLastRegDate;
	}
	
}
