package com.fourdrone.dakcheerup.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fourdrone.dakcheerup.domain.Jaso;
import com.fourdrone.dakcheerup.domain.jaso.File;
import com.fourdrone.dakcheerup.domain.jaso.Group;
import com.fourdrone.dakcheerup.domain.jaso.Qna;
import com.fourdrone.dakcheerup.domain.jaso.QnaLog;
import com.fourdrone.dakcheerup.mapper.JasoMapper;


@Repository
public class JasoServiceImpl implements JasoService {
	@Autowired
    private SqlSession sqlSession;
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               GET JASO	                         * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	
	@Override
	public Jaso getJaso(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getJaso(memberId);
	}

	@Override
	public File getFile(int fileNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getFile(fileNo);
	}

	@Override
	public ArrayList<File> getFileList(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		ArrayList<File> result = jasoMapper.getFileList(memberId);
	    return result;
	}

	@Override
	public Group getGroup(int groupNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getGroup(groupNo);
	}

	@Override
	public ArrayList<Group> getGroupList(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		ArrayList<Group> result = jasoMapper.getGroupList(memberId);
	    return result;
	}

	@Override
	public Qna getQna(int qnaNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getQna(qnaNo);
	}

	@Override
	public ArrayList<Qna> getQnaList(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		ArrayList<Qna> result = jasoMapper.getQnaList(memberId);
	    return result;
	}
	
	@Override
	public ArrayList<Qna> getQnaListFromFileNo(int fileNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		ArrayList<Qna> result = jasoMapper.getQnaListFromFileNo(fileNo);
	    return result;
	}
	
	@Override
	public ArrayList<Qna> getQnaListFromTrash(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		ArrayList<Qna> result = jasoMapper.getQnaListFromTrash(memberId);
	    return result;
	}
	
	@Override
	public ArrayList<Qna> getQnaListFromInterest(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		ArrayList<Qna> result = jasoMapper.getQnaListFromInterest(memberId);
	    return result;
	}

	@Override
	public QnaLog getQnaLog(int qnaLogNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getQnaLog(qnaLogNo);
	}

	@Override
	public ArrayList<QnaLog> getQnaLogList(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		ArrayList<QnaLog> result = jasoMapper.getQnaLogList(memberId);
	    return result;
	}

	
	@Override
	public File getFileLastItem(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getFileLastItem(memberId);
	}

	@Override
	public Group getGroupLastItem(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getGroupLastItem(memberId);
	}

	@Override
	public Qna getQnaLastItem(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
	    return jasoMapper.getQnaLastItem(memberId);
	}
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               ADD JASO                          	 * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	@Override
	public void addJaso(Jaso jaso) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.addJaso(jaso);
		
		
	}

	@Override
	public void addFile(File file) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.addFile(file);
	}

	@Override
	public void addGroup(Group group) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.addGroup(group);		
	}

	@Override
	public void addQna(Qna qna) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.addQna(qna);		
	}

	@Override
	public void addQnaLog(QnaLog qnaLog) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.addQnaLog(qnaLog);		
	}

	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               MOD JASO                          	 * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	@Override
	public void modJaso(Jaso jaso) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modJaso(jaso);		
	}

	@Override
	public void modFile(File file) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modFile(file);		
	}
	
	@Override
	public void modFileTrash(File file) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modFileTrash(file);		
	}

	@Override
	public void modFileInterest(File file) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modFileInterest(file);		
	}

	@Override
	public void modGroup(Group group) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modGroup(group);		
	}

	@Override
	public void modQna(Qna qna) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modQna(qna);		
	}

	@Override
	public void modQnaInterest(Qna qna) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modQnaInterest(qna);	
	}
	
	@Override
	public void modQnaTrash(Qna qna) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modQnaTrash(qna);			
	}


	@Override
	public void modQnaLog(QnaLog qnaLog) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.modQnaLog(qnaLog);		
	}

	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               DEL JASO                          	 * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	@Override
	public void delJaso(String memberId) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.delJaso(memberId);		
	}

	@Override
	public void delFile(int fileNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.delFile(fileNo);		
	}

	@Override
	public void delGroup(int groupNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.delGroup(groupNo);		
	}

	@Override
	public void delQna(int qnaNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.delQna(qnaNo);		
	}

	@Override
	public void delQnaLog(int qnaLogNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.delQnaLog(qnaLogNo);		
	}

	@Override
	public void delQnaOnFile(int fileNo) {
		JasoMapper jasoMapper = sqlSession.getMapper(JasoMapper.class);
		jasoMapper.delQnaOnFile(fileNo);
	}

}
