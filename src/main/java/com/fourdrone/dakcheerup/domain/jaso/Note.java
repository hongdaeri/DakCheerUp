package com.fourdrone.dakcheerup.domain.jaso;

import java.sql.Timestamp;

public class Note {
	private String memberId;
	private int noteNo;
	private String noteContents;
	private Timestamp noteRegDate;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getNoteNo() {
		return noteNo;
	}
	public void setNoteNo(int noteNo) {
		this.noteNo = noteNo;
	}
	public String getNoteContents() {
		return noteContents;
	}
	public void setNoteContents(String noteContents) {
		this.noteContents = noteContents;
	}
	public Timestamp getNoteRegDate() {
		return noteRegDate;
	}
	public void setNoteRegDate(Timestamp noteRegDate) {
		this.noteRegDate = noteRegDate;
	}
	

}
