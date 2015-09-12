/**
 * TB_RESUME_STRENGTH(이력서_강점) 테이블 대응 VO 클래스
 */
package com.fourdrone.dakcheerup.domain.resume;

import java.sql.Timestamp;

/**
 * @author h0ngz
 *
 */
public class Strength {

	private String memberId;				//회원_아이디 	
	private String strengthItem;			//강점_항목 	
	private String characterItem;			//성격_항목
	private Timestamp strengthRegDate;		//강점_등록일 
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getStrengthItem() {
		return strengthItem;
	}
	public void setStrengthItem(String strengthItem) {
		this.strengthItem = strengthItem;
	}
	public String getCharacterItem() {
		return characterItem;
	}
	public void setCharacterItem(String characterItem) {
		this.characterItem = characterItem;
	}
	public Timestamp getStrengthRegDate() {
		return strengthRegDate;
	}
	public void setStrengthRegDate(Timestamp strengthRegDate) {
		this.strengthRegDate = strengthRegDate;
	}
	
	
	
	
}
