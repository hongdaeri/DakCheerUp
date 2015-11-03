package com.fourdrone.dakcheerup.domain.jaso;

public class JasoState {
	
	private int totalFileInTrash;
	private int totalQnaInTrash;
	private int totalFileInInterest;
	private int totalQnaInInterest;
	public int getTotalFileInTrash() {
		return totalFileInTrash;
	}

	public void setTotalFileInTrash(int totalFileInTrash) {
		this.totalFileInTrash = totalFileInTrash;
	}

	public int getTotalQnaInTrash() {
		return totalQnaInTrash;
	}

	public void setTotalQnaInTrash(int totalQnaInTrash) {
		this.totalQnaInTrash = totalQnaInTrash;
	}

	public int getTotalFileInInterest() {
		return totalFileInInterest;
	}

	public void setTotalFileInInterest(int totalFileInInterest) {
		this.totalFileInInterest = totalFileInInterest;
	}

	public int getTotalQnaInInterest() {
		return totalQnaInInterest;
	}

	public void setTotalQnaInInterest(int totalQnaInInterest) {
		this.totalQnaInInterest = totalQnaInInterest;
	}

	
	
	public JasoState()
	{
		totalFileInTrash=0;
		totalQnaInTrash=0;
		totalFileInInterest=0;
		totalQnaInInterest=0;
	}

}
