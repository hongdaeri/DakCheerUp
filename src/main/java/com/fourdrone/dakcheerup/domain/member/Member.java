package com.fourdrone.dakcheerup.domain.member;
import java.sql.Timestamp;

public class Member {
	private String memberId;		// 회원_아이디 
	private String memberPassword;	// 회원_비밀번호	
	private String memberName;		// 회원_이름
	private Timestamp regDate;		// 회원_가입
	
	
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	

}