package com.fourdrone.dakcheerup.domain.member;
import java.sql.Timestamp;

public class Member {
	private String memberId;		// 회원_아이디 
	private String memberPassword;	// 회원_비밀번호	
	private String memberName;		// 회원_이름
	private Timestamp regDate;		// 회원_가입
	private String memberSignOutRequest;		// 탈퇴요청  Y,N
	private Timestamp memberSignOutRequestDate;	// 탈퇴요청일 
	
	
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
	public String getMemberSignOutRequest() {
		return memberSignOutRequest;
	}
	public void setMemberSignOutRequest(String memberSignOutRequest) {
		this.memberSignOutRequest = memberSignOutRequest;
	}
	public Timestamp getMemberSignOutRequestDate() {
		return memberSignOutRequestDate;
	}
	public void setMemberSignOutRequestDate(Timestamp memberSignOutRequestDate) {
		this.memberSignOutRequestDate = memberSignOutRequestDate;
	} 
	
	
	
	

}