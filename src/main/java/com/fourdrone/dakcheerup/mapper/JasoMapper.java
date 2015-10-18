package com.fourdrone.dakcheerup.mapper;

import com.fourdrone.dakcheerup.domain.Jaso;
import com.fourdrone.dakcheerup.domain.jaso.*;


import java.util.ArrayList;

/**
 * Created by h0ngz on 2015. 8. 17..
 */
public interface JasoMapper {

	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               GET JASO                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */

	// 회원의 자소서 정보
    Jaso getJaso(String memberId);
    
    // 파일
    File getFile(int fileNo);									//파일 단일항목
    ArrayList<File> getFileList(String memberId);				//파일 리스트
    File getFileLastItem(String memberId);
    
    // 그룹
    Group getGroup(int groupNo);								//그룹 단일항목
    ArrayList<Group> getGroupList(String memberId);				//그룹 리스트
    Group getGroupLastItem(String memberId);
    
    // 문항
    Qna getQna(int qnaNo);										//문항 단일항목
    ArrayList<Qna> getQnaList(String memberId);					//문항 리스트
    Qna getQnaLastItem(String memberId);
    ArrayList<Qna> getQnaListFromFileNo(int fileNo);			//파일번호에 대한 문항 리스트
    
    // 문항로그 
    QnaLog getQnaLog(int qnaLogNo);								//문항 _ 로그_ 단일항목
    ArrayList<QnaLog> getQnaLogList(String memberId);			//문항 _ 로그 _ 리스트
    
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               ADD JASO                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	// 회원의 자소서 정보
    void addJaso(Jaso jaso);
    
    // 파일
    void addFile(File file);								//파일 단일항목
    
    // 그룹
    void addGroup(Group group);								//그룹 단일항목
    
    // 문항
    void addQna(Qna qna);									//문항 단일항목
    
    // 문항로그 
    void addQnaLog(QnaLog qnaLog);							//문항 _ 로그_ 단일항목
    
    
    
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               MOD JASO                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	// 회원의 자소서 정보
    void modJaso(Jaso jaso);
    
    // 파일
    void modFile(File file);								//파일 단일항목
    
    // 그룹
    void modGroup(Group group);								//그룹 단일항목
    
    // 문항
    void modQna(Qna qna);									//문항 단일항목
    
    // 문항로그 
    void modQnaLog(QnaLog qnaLog);							//문항 _ 로그_ 단일항목
    
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               DEL JASO                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	// 회원의 자소서 정보
    void delJaso(String memberId);
    
    // 파일
    void delFile(int fileNo);								//파일 단일항목
    
    // 그룹
    void delGroup(int groupNo);								//그룹 단일항목
    
    // 문항
    void delQna(int qnaNo);									//문항 단일항목
    
    // 문항로그 
    void delQnaLog(int qnaLogNo);							//문항 _ 로그_ 단일항목

}
