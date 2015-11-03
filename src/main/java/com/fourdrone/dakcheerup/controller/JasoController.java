package com.fourdrone.dakcheerup.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
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
@Transactional (propagation=Propagation.SUPPORTS)
@RequestMapping("/jaso")
public class JasoController {

	@Autowired private JasoService jasoService;
	@Autowired private HttpSession session;
	
	// 자기소개서 불러오기
	@RequestMapping(value="", method = RequestMethod.GET)
	public String getJaso(ModelMap model) {
		//메뉴구성을 위한 메소드 호출 
		createMenuInfo(model);    
	    
	    return "jaso/jaso-open";
	}
	
	//파일생성
	@Transactional(propagation=Propagation.REQUIRED)
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
	
	//그룹생성 
	@RequestMapping(value="/new-group", method = RequestMethod.POST)
	public String postNewGroup(@ModelAttribute("group") Group group) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		// 그룹 생성
		group.setMemberId(memberId);
		group.setGroupRegDate(new Timestamp(System.currentTimeMillis()));		
        this.jasoService.addGroup(group);
        
	    return "redirect:";
	}
	
	// 자소서 열기 (문항불러오기)
	@RequestMapping(value="/open/{fileNo}", method = RequestMethod.GET)
	public String getFile(ModelMap model, @PathVariable("fileNo") int fileNo) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		//메뉴구성을 위한 메소드 호출 
		createMenuInfo(model);      
	    
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
	
	// 자소서 관심항목 불러오기 
	@RequestMapping(value="/interest", method = RequestMethod.GET)
	public String getInterest(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		//메뉴구성을 위한 메소드 호출 
		createMenuInfo(model); 
		
	    List<Qna> interestQnaList = this.jasoService.getQnaListFromInterest(memberId);
	    model.addAttribute("interestQnaList", interestQnaList);
		
		return "jaso/jaso-interest";
	}
	
	// 자소서 휴지통 불러오기 
	@RequestMapping(value="/trash", method = RequestMethod.GET)
	public String getTrash(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		//메뉴구성을 위한 메소드 호출 
		createMenuInfo(model); 
		
	    List<Qna> trashQnaList = this.jasoService.getQnaListFromTrash(memberId);
	    model.addAttribute("trashQnaList", trashQnaList);
		
		return "jaso/jaso-trash";
	}
	
	// 자소서 휴지통 복원하기 
	@RequestMapping(value="/trash/restore", method = RequestMethod.GET)
	public String trashRestore(ModelMap model, HttpServletRequest request) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		String target = request.getParameter("target");
		int no = Integer.parseInt(request.getParameter("no"));
		
		switch(target)
		{
			case "qna":
				Qna trashQna = this.jasoService.getQna(no);
				if(trashQna.getMemberId().equals(memberId))
				{
					trashQna.setMemberId(memberId);
					trashQna.setQnaNo(no);
					trashQna.setQnaTrash("N");
					trashQna.setQnaTrashDate(new Timestamp(System.currentTimeMillis()));
			    	trashQna.setQnaEditDate(new Timestamp(System.currentTimeMillis()));
			    	this.jasoService.modQnaTrash(trashQna);
				}
				break;
			case "file":
				File trashFile = this.jasoService.getFile(no);
				if(trashFile.getMemberId().equals(memberId))
				{
					trashFile.setMemberId(memberId);
					trashFile.setFileNo(no);
					trashFile.setFileTrashYn("N");
					trashFile.setFileTrashDate(new Timestamp(System.currentTimeMillis()));
					trashFile.setFileEditDate(new Timestamp(System.currentTimeMillis()));
					this.jasoService.modFileTrash(trashFile);
				}
				break;
		}
		
		return "redirect:";
	}
	
	// 자소서 휴지통 삭제하기 
	@RequestMapping(value="/trash/delete", method = RequestMethod.GET)
	public String trashDelete(ModelMap model, HttpServletRequest request) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		String target = request.getParameter("target");
		int no = Integer.parseInt(request.getParameter("no"));
		
		switch(target)
		{
			case "qna":
				Qna trashQna = this.jasoService.getQna(no);
				if(trashQna.getMemberId().equals(memberId))
					this.jasoService.delQna(no);
				break;
			case "file":
				File trashFile = this.jasoService.getFile(no);
				if(trashFile.getMemberId().equals(memberId))
					this.jasoService.delQnaOnFile(no);
					this.jasoService.delFile(no);
				break;
		}
		
		return "redirect:";
	}						

	// 자소서 업데이트 
	@Transactional(propagation=Propagation.REQUIRED)
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String postJasoUpdate(ModelMap model, HttpServletRequest request) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		//현재까지 작업한 자소서 저장(업데이트) 
		updateJaso(request);
		
		String[] qnaNo = request.getParameterValues("qnaNo");
		String[] qnaInterest; 
		String[] qnaTrash;
		int targetQnaNo; 
		String qnaTargetValue;
		
		// 사용자 이벤트 분석 & 처리 구문 
		switch(request.getParameter("actionMethod"))
		{
			case "qnaAdd":			// 새로운 문항 생성  
				
				
				Qna newQna = new Qna();
				newQna.setFileNo(Integer.parseInt(request.getParameter("fileNo")));
				newQna.setMemberId(memberId);
				newQna.setQnaQuestion("");
		    	newQna.setQnaAnswer("");
		    	newQna.setQnaInterestYn("N");
		    	newQna.setQnaRegDate(new Timestamp(System.currentTimeMillis()));
		    	this.jasoService.addQna(newQna);
				break;
				
			case "qnaInterest":		// 현재 문항 관심문항 등록 
				qnaInterest = request.getParameterValues("qnaInterestYn");
				targetQnaNo = Integer.parseInt(request.getParameter("targetQnaNo"))-1;
				qnaTargetValue = qnaInterest[targetQnaNo];
				
				if(qnaTargetValue.equals("N")) 
					qnaTargetValue = "Y";
				else
					qnaTargetValue = "N";
				
				Qna interestQna = new Qna();
				interestQna.setFileNo(Integer.parseInt(request.getParameter("fileNo")));
				interestQna.setMemberId(memberId);
				interestQna.setQnaNo(Integer.parseInt(qnaNo[targetQnaNo]));
		    	interestQna.setQnaInterestYn(qnaTargetValue);
		    	interestQna.setQnaInterestDate(new Timestamp(System.currentTimeMillis()));
		    	interestQna.setQnaEditDate(new Timestamp(System.currentTimeMillis()));
		    	
		    	this.jasoService.modQnaInterest(interestQna);
				break;
				
			case "qnaTrash":		// 현재 문항 휴지통 (삭제는 아님) 
				qnaTrash = request.getParameterValues("qnaTrash");
				targetQnaNo = Integer.parseInt(request.getParameter("targetQnaNo"))-1;
				qnaTargetValue = qnaTrash[targetQnaNo];
				
				if(qnaTargetValue.equals("N")) 
					qnaTargetValue = "Y";
				else
					qnaTargetValue = "N";
				
				Qna trashQna = new Qna();
				trashQna.setFileNo(Integer.parseInt(request.getParameter("fileNo")));
				trashQna.setMemberId(memberId);
				trashQna.setQnaNo(Integer.parseInt(qnaNo[targetQnaNo]));
				trashQna.setQnaTrash(qnaTargetValue);
				trashQna.setQnaTrashDate(new Timestamp(System.currentTimeMillis()));
		    	trashQna.setQnaEditDate(new Timestamp(System.currentTimeMillis()));
		    	this.jasoService.modQnaTrash(trashQna);
				break;
				
			case "fileInterest":	// 현재 파일 관심파일 등록 
				String fileInterest = request.getParameter("fileInterestYn");
				if(fileInterest.equals("Y"))
					fileInterest = "N";
				else
					fileInterest = "Y";
				
				File interestFile = new File();
				interestFile.setMemberId(memberId);
				interestFile.setFileNo(Integer.parseInt(request.getParameter("fileNo")));
				interestFile.setFileName(request.getParameter("newFileName"));
				interestFile.setFileInterestYn(fileInterest);
				interestFile.setFileInterestDate(new Timestamp(System.currentTimeMillis()));
				interestFile.setFileEditDate(new Timestamp(System.currentTimeMillis()));
				this.jasoService.modFileInterest(interestFile);
				break;
				
			case "fileTrash":		// 현재 파일 휴지통 (삭제는 아님) 
				String fileTrash = request.getParameter("fileTrashYn");
				if(fileTrash.equals("Y"))
					fileTrash = "N";
				else
					fileTrash = "Y";
				
				File trashFile = new File();
				trashFile.setMemberId(memberId);
				trashFile.setFileNo(Integer.parseInt(request.getParameter("fileNo")));
				trashFile.setFileName(request.getParameter("fileName"));
				trashFile.setFileTrashYn(fileTrash);
				trashFile.setFileTrashDate(new Timestamp(System.currentTimeMillis()));
				trashFile.setFileEditDate(new Timestamp(System.currentTimeMillis()));
				this.jasoService.modFileTrash(trashFile);
				break;
			
		}
		
		// 처리한 파일 로의 분기 
		return "redirect:open/" + request.getParameter("fileNo");
	}
	
	@Transactional(propagation=Propagation.REQUIRED)
	private void updateJaso(HttpServletRequest request) {
		// qna 항목 업데이트 루틴 (메소드로 빼내서 특정 이벤트 발생때마다 저장하도록 하자.
		String memberId = (String)session.getAttribute("memberLoginInfo");
		int fileNo = Integer.parseInt(request.getParameter("fileNo"));
		String[] qnaNo = request.getParameterValues("qnaNo");
		String[] question = request.getParameterValues("qnaQuestion");
		String[] answer = request.getParameterValues("qnaAnswer");
		
		for(int i=0; i<qnaNo.length; i++)
		{
			Qna qna = new Qna();
			qna.setFileNo(fileNo);
			qna.setMemberId(memberId);
			qna.setQnaNo(Integer.parseInt(qnaNo[i]));
			qna.setQnaQuestion(question[i]);
			qna.setQnaAnswer(answer[i]);
			qna.setQnaEditDate(new Timestamp(System.currentTimeMillis()));
			
			this.jasoService.modQna(qna);
		}
		
		File file = new File();
		file.setMemberId(memberId);
		file.setFileNo(fileNo);
		file.setFileEditDate(new Timestamp(System.currentTimeMillis()));
		file.setFileName(request.getParameter("newFileName"));
		this.jasoService.modFile(file);
		
		// qna 항목 업데이트 루틴 끝.
	}
	
	// 메뉴정보 구성 메서드 
	@Transactional(propagation=Propagation.REQUIRED)
	private void createMenuInfo(ModelMap model)
	{
		String memberId = (String)session.getAttribute("memberLoginInfo");
		/* 메뉴구성을 위한 액션 */
		//자소서 상태객체 
		JasoState jasoState = new JasoState();
		
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
	    	if(fileList.get(i).getFileTrashYn().equals("Y"))	    	
	    		jasoState.setTotalFileInTrash(jasoState.getTotalFileInTrash() + 1);
	    	
	    	if(fileList.get(i).getFileInterestYn().equals("Y"))	    	
	    		jasoState.setTotalFileInInterest(jasoState.getTotalFileInInterest() + 1);	    	
	    }
	    model.addAttribute("fileList", fileList);
	    
	    //qna 전체가져오기
		List<Qna> qnaList = this.jasoService.getQnaList(memberId);
		for(int i=0; i<qnaList.size(); i++)
		{
			if(qnaList.get(i).getQnaTrash().equals("Y"))			
	    		jasoState.setTotalQnaInTrash(jasoState.getTotalQnaInTrash() + 1);
			
			if(qnaList.get(i).getQnaInterestYn().equals("Y"))
	    		jasoState.setTotalQnaInInterest(jasoState.getTotalQnaInInterest() + 1);
		}				    
	    model.addAttribute("jasoState", jasoState);
	    
	 /* 메뉴구성을 위한 액션 끝 */   
	}

}