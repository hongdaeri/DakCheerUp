package com.fourdrone.dakcheerup.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fourdrone.dakcheerup.domain.Jaso;
import com.fourdrone.dakcheerup.domain.jaso.*;
import com.fourdrone.dakcheerup.domain.resume.Profile;
import com.fourdrone.dakcheerup.service.JasoService;

@Controller
@RequestMapping("/jaso")
public class JasoController {

	@Autowired private JasoService jasoService;
	@Autowired private HttpSession session;
		
	@RequestMapping(value="", method = RequestMethod.GET)
	public String getJaso(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		//자소서 불러오기
		Jaso jaso = this.jasoService.getJaso(memberId);
	    model.addAttribute("jaso", jaso);	 
	    
	    //그룹 리스트 불러오기
	    List<Group> groupList = this.jasoService.getGroupList(memberId);
	    model.addAttribute("groupList", groupList);
	    
	    //파일 리스트 불러오기
	    List<File> fileList = this.jasoService.getFileList(memberId);
		    //파일별 항목 갯수 계산
		    for(int i=0; i<fileList.size(); i++)
		    {
		    	int count = this.jasoService.getQnaListFromFileNo(fileList.get(i).getFileNo()).size();
		    	fileList.get(i).setQnaTotalCount(count);
		    }
	    model.addAttribute("fileList", fileList);
	    
	   
	   
	    
	    return "jaso/jaso-open";
	}
	
	@RequestMapping(value="/new-file", method = RequestMethod.POST)
	public String postNewFile(ModelMap model, HttpServletRequest request) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		// 파일생성
		File file = new File();
		file.setMemberId(memberId);
		file.setGroupNo(Integer.parseInt(request.getParameter("groupNo")));
		file.setFileName(request.getParameter("fileName"));
		file.setFileTrashYn("N");
		file.setFileInterestYn("N");
		file.setFileRegDate(new Timestamp(System.currentTimeMillis()));
		this.jasoService.addFile(file);

		// 생성 파일 가져오기
		file = this.jasoService.getFileLastItem(memberId);
		
		// 기본문항 만들기
		Qna qna = new Qna();
    	qna.setFileNo(file.getFileNo());
    	qna.setMemberId(memberId);
    	qna.setQnaQuestion("문항 1");
    	qna.setQnaAnswer("");
    	qna.setQnaInterestYn("N");
    	qna.setQnaRegDate(new Timestamp(System.currentTimeMillis()));
    	this.jasoService.addQna(qna);
    	
		return "redirect:";
	}
	
	@RequestMapping(value="/new-group", method = RequestMethod.POST)
	public String postNewGroup(@ModelAttribute("group") Group group) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		// 그룹 생성
		group.setMemberId(memberId);
		group.setGroupRegDate(new Timestamp(System.currentTimeMillis()));		
        this.jasoService.addGroup(group);
        
	    return "redirect:";
	}
	
	@RequestMapping(value="/open/{fileNo}", method = RequestMethod.GET)
	public String getFile(ModelMap model, @PathVariable("fileNo") int fileNo) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		/* 메뉴구성을 위한 액션 */
			//자소서 불러오기
			Jaso jaso = this.jasoService.getJaso(memberId);
		    model.addAttribute("jaso", jaso);	 
		    
		    //그룹 리스트 불러오기
		    List<Group> groupList = this.jasoService.getGroupList(memberId);
		    model.addAttribute("groupList", groupList);
		    
		    //파일 리스트 불러오기
		    List<File> fileList = this.jasoService.getFileList(memberId);
			    //파일별 항목 갯수 계산
			    for(int i=0; i<fileList.size(); i++)
			    {
			    	int count = this.jasoService.getQnaListFromFileNo(fileList.get(i).getFileNo()).size();
			    	fileList.get(i).setQnaTotalCount(count);
			    }
		    model.addAttribute("fileList", fileList);
		    
		 /* 메뉴구성을 위한 액션 끝 */   
		
	    
	    
		//파일 불러오기
	    File file = this.jasoService.getFile(fileNo);
	    // 불러온 파일의 소유자가 로그인한 회원과 같을 경우만
	    if(file.getMemberId().equals(memberId))
	    {
		    model.addAttribute("file", file);
		    
		    //문항 리스트 불러오기
		    List<Qna> qnaListFromFile = this.jasoService.getQnaListFromFileNo(file.getFileNo());
		    model.addAttribute("qnaListFromFile", qnaListFromFile);
	    }
	    else
	    {
	    	file = this.jasoService.getFileLastItem(memberId);
	    	model.addAttribute("file", file);
		    
		    //문항 리스트 불러오기
		    List<Qna> qnaListFromFile = this.jasoService.getQnaListFromFileNo(file.getFileNo());
		    model.addAttribute("qnaListFromFile", qnaListFromFile);
	    }
		return "jaso/jaso-open";
	}
	

	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String postJasoUpdate(ModelMap model, HttpServletRequest request) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		int fileNo = Integer.parseInt(request.getParameter("fileNo"));
		String[] qnaNo = request.getParameterValues("qnaNo");
		String[] question = request.getParameterValues("qnaQuestion");
		String[] answer = request.getParameterValues("qnaAnswer");
		
		
		// qna 항목 업데이트 루틴 (메소드로 빼내서 특정 이벤트 발생때마다 저장하도록 하자.
		for(int i=0; i<qnaNo.length; i++)
		{
			Qna qna = new Qna();
			qna.setFileNo(fileNo);
			qna.setMemberId(memberId);
			qna.setQnaNo(Integer.parseInt(qnaNo[i]));
			qna.setQnaQuestion(question[i]);
			qna.setQnaAnswer(answer[i]);
			// qna interest부분은 따로 빼내서 클릭즉시 그 항목만 업데이트 되도록 하자.
			//qna.setQnaInterestYn(qnaInterestYn); 
			//qna.setQnaInterestDate(new Timestamp(System.currentTimeMillis()));
			qna.setQnaEditDate(new Timestamp(System.currentTimeMillis()));
			
			this.jasoService.modQna(qna);
		}
		
		File file = new File();
		file.setMemberId(memberId);
		file.setFileNo(fileNo);
		file.setFileEditDate(new Timestamp(System.currentTimeMillis()));
		file.setFileName(request.getParameter("fileName"));
		
		this.jasoService.modFile(file);
		
		// trash 부분과 interest 부분은 jasoMapper 에 따로 메소드를 만들어서 관리하자.
		
		// qna 항목 업데이트 루틴 끝.
		    	
		return "redirect:";
	}

}