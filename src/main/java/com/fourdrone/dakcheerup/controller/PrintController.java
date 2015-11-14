package com.fourdrone.dakcheerup.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fourdrone.dakcheerup.domain.RegItemState;
import com.fourdrone.dakcheerup.domain.jaso.File;
import com.fourdrone.dakcheerup.domain.jaso.Group;
import com.fourdrone.dakcheerup.domain.jaso.Qna;
import com.fourdrone.dakcheerup.domain.resume.AcademicHigh;
import com.fourdrone.dakcheerup.domain.resume.AcademicUniv;
import com.fourdrone.dakcheerup.domain.resume.Award;
import com.fourdrone.dakcheerup.domain.resume.Brother;
import com.fourdrone.dakcheerup.domain.resume.Career;
import com.fourdrone.dakcheerup.domain.resume.Education;
import com.fourdrone.dakcheerup.domain.resume.Family;
import com.fourdrone.dakcheerup.domain.resume.Global;
import com.fourdrone.dakcheerup.domain.resume.LanguageAbility;
import com.fourdrone.dakcheerup.domain.resume.LanguageExam;
import com.fourdrone.dakcheerup.domain.resume.License;
import com.fourdrone.dakcheerup.domain.resume.Military;
import com.fourdrone.dakcheerup.domain.resume.OA;
import com.fourdrone.dakcheerup.domain.resume.Profile;
import com.fourdrone.dakcheerup.domain.resume.Project;
import com.fourdrone.dakcheerup.domain.resume.Swot;
import com.fourdrone.dakcheerup.domain.resume.Voluntary;
import com.fourdrone.dakcheerup.domain.resume.Write;
import com.fourdrone.dakcheerup.service.JasoService;
import com.fourdrone.dakcheerup.service.ResumeService;

@Controller
@RequestMapping("/print")
public class PrintController {
	
	private static final Logger logger = LoggerFactory.getLogger(PrintController.class);
	
	@Autowired private ResumeService resumeService;
	@Autowired private JasoService jasoService;
	@Autowired private HttpSession session;
	
	
    @RequestMapping(method = RequestMethod.GET)
    public String getPrint(ModelMap model) {
    	
    	String memberId = (String)session.getAttribute("memberLoginInfo");
    	
    	//이력서 등록 상태 체크    
    	RegItemState regItemState = new RegItemState();
    	
		Profile profile = this.resumeService.getProfile(memberId);
		model.addAttribute("profile", profile); 
		
    	//가족관계 체크
		Brother brother = this.resumeService.getBrother(memberId);		   
	    List<Family> familyList = this.resumeService.getFamilyList(memberId);
	    if(familyList.size() !=0 && brother.getBrotherMe().length() > 1)
	    {
	    	regItemState.setFamily(1);
	    	model.addAttribute("brother", brother); 
	    	model.addAttribute("familyList", familyList); 
	    }

	    
	    //병역체크
	    Military military = this.resumeService.getMilitary(memberId);
	    if(military.getMilitarySection()!=null && military.getMilitaryRank().length() > 1)
	    {	
	    	regItemState.setMilitary(1);	
	    	model.addAttribute("military", military); 
	    }

	    //학력체크 
	    AcademicHigh academicHigh = this.resumeService.getAcademicHigh(memberId);
	    List<AcademicUniv> academicUnivList = this.resumeService.getAcademicUnivList(memberId);
	    if(academicHigh.getAcademicHighName()!=null && academicHigh.getAcademicHighName().length() > 1)
	    {
	    	regItemState.setAcademic(1);	
	    	model.addAttribute("academicHigh", academicHigh); 
	    	model.addAttribute("academicUnivList", academicUnivList); 
	    }
	    
	    
	    //OA 체크
	    OA oa = this.resumeService.getOA(memberId);
	    if(oa.getOaDoc()!=null)
	    {
	    	regItemState.setOa(1);
	    	model.addAttribute("oa", oa); 

	    }

	    
	    // 자격증 체크 
	    List<License> licenseList = this.resumeService.getLicenseList(memberId);
	    if(licenseList.size()!=0)
	    {
	    	regItemState.setLicense(1);
	    	model.addAttribute("licenseList", licenseList); 
	    	model.addAttribute("licenseSize", licenseList.size()); 

	    }
	    
	    // 어학능력 체크 
	    List<LanguageAbility> languageAbilityList = this.resumeService.getLanguageAbilityList(memberId);
	    if(languageAbilityList.size() != 0)
	    {
	    	regItemState.setLangAbility(1);
	    	model.addAttribute("languageAbilityList", languageAbilityList); 
	    	model.addAttribute("languageAbilitySize", languageAbilityList.size()); 
	    }

	    
	    // 어학시험 체크 
	    List<LanguageExam> languageExamList = this.resumeService.getLanguageExamList(memberId);
	    if(languageExamList.size() != 0)
	    {
	    	regItemState.setLangExam(1);
	    	model.addAttribute("languageExamList", languageExamList); 
	    	model.addAttribute("languageExamSize", languageExamList.size()); 	

	    }
	    
	    //수상실적체크 
	    List<Award> awardList = this.resumeService.getAwardList(memberId);
	    if(awardList.size() != 0)
	    {
	    	regItemState.setAward(1);
	    	model.addAttribute("awardList", awardList); 
	    	model.addAttribute("awardSize", awardList.size()); 	

	    }

	    
	    //경력 체크 
	    List<Career> careerList = this.resumeService.getCareerList(memberId);
	    if(careerList.size() != 0)
	    {
	    	regItemState.setCareer(1);
	    	model.addAttribute("careerList", careerList); 
	    	model.addAttribute("careerSize", careerList.size()); 	

	    }
	    
	    // 봉사활동 체크 
	    List<Voluntary> voluntaryList = this.resumeService.getVoluntaryList(memberId);
	    if(voluntaryList.size() != 0)
	    {
	    	regItemState.setVoluntary(1);
	    	model.addAttribute("voluntaryList", voluntaryList); 
	    	model.addAttribute("voluntarySize", voluntaryList.size()); 	
	    }
	    
	    // 교육이수 체크 
	    List<Education> educationList = this.resumeService.getEducationList(memberId);
	    if(educationList.size() != 0)
	    {
	    	regItemState.setEducation(1);
	    	model.addAttribute("educationList", educationList); 
	    	model.addAttribute("educationSize", educationList.size()); 	

	    }
	    
	    // 프로젝트 경험 체크 
	    List<Project> projectList = this.resumeService.getProjectList(memberId);
	    if(projectList.size() != 0)
	    {
	    	regItemState.setProject(1);
	    	model.addAttribute("projectList", projectList); 
	    	model.addAttribute("projectSize", projectList.size()); 	

	    }
	    
	    
	    // 저술내역체크 
	    List<Write> writeList = this.resumeService.getWriteList(memberId);
	    if(writeList.size() != 0)
	    {
	    	regItemState.setWrite(1);
	    	model.addAttribute("writeList", writeList); 
	    	model.addAttribute("writeSize", writeList.size()); 	

	    }
	    
	    // 글로벌경험 체크 
	    List<Global> globalList = this.resumeService.getGlobalList(memberId);
	    if(globalList.size() != 0)
	    {
	    	regItemState.setGlobal(1);
	    	model.addAttribute("globalList", globalList); 	
	    	model.addAttribute("globalSize", globalList.size()); 	

	    }
	    
	    //SWOT분석 체크 
	    Swot swot = this.resumeService.getSwot(memberId);
	    if(swot.getSwotStrength()!=null && swot.getSwotStrength().length() > 2)
	    {
	    	regItemState.setSwot(1);
	    	model.addAttribute("swot", swot); 

	    }
	    //등록 문항수 체크
	    int itemTotalCount=0;
	    itemTotalCount =  regItemState.getAcademic() + regItemState.getAward() + regItemState.getCareer() + regItemState.getEducation() + 
	    		regItemState.getFamily() + regItemState.getGlobal() + regItemState.getLangAbility() + regItemState.getLangExam() + regItemState.getLicense() + 
	    		regItemState.getMilitary() + regItemState.getOa() + regItemState.getProject() + regItemState.getStrength() + regItemState.getSwot() + 
	    		regItemState.getVoluntary() + regItemState.getWrite();
	    	
	    
	    model.addAttribute("itemTotalCount", itemTotalCount);  
	    
	    // regItemState등록.
    	model.addAttribute("regItemState", regItemState);  
    	
    	
    	
    	/* 자소서 불러오기 */
    	
    	//그룹, 파일, 자소서 불러오기
    	List<Group> groupList = this.jasoService.getGroupList(memberId);
    	model.addAttribute("groupList", groupList); 
    	List<File> fileList = this.jasoService.getFileList(memberId);
    	model.addAttribute("fileList", fileList); 
    	model.addAttribute("fileSize", fileList.size()); 
    	List<Qna> qnaList = this.jasoService.getQnaList(memberId);
    	model.addAttribute("qnaList", qnaList); 
    	model.addAttribute("qnaSize", qnaList.size()); 
	    
        return "print/print";
    }
    
    // 프린트를 위한 폼생성 프리뷰 
    @RequestMapping(value="/preview", method = RequestMethod.POST)
    public String getPreview(ModelMap model, HttpServletRequest request) {
    	
    	String memberId = (String)session.getAttribute("memberLoginInfo");    	
    	String printResumeOption = request.getParameter("printResumeOption");    	
    	String[] resumePrintItemList = request.getParameterValues("resume-print-item");
    	String printJasoOption = request.getParameter("printJasoOption");    
    	String[] jasoPrintItemList = request.getParameterValues("jaso-print-item");
    	String printTemplate = request.getParameter("print-template");
    	String printAction = request.getParameter("print-action");
    	
    	
    	model.addAttribute("printResumeOption", printResumeOption);
    	model.addAttribute("printJasoOption", printJasoOption);
    	
    	//미리보기버튼을 누르면 이 메소드에서 파일생성 처리를 하고
    	//javascript로  프린트버튼, pdf버튼 등이 보임.
    	
    	if(printResumeOption.equals("true"))
    	{
    		Profile profile = this.resumeService.getProfile(memberId);
    		// 나이계산 
    		int birth = Integer.parseInt( profile.getProfileJuminFront().substring(0, 2));
    		int age = 0;
    		if(birth > 15)
    		{
    			age = 2015 - 1900 - birth;
    		}
    		else
    		{
    			age = 2015 - 2000 - birth;
    		}
    	

    		model.addAttribute("today", new Timestamp(System.currentTimeMillis())); 
    		model.addAttribute("profile", profile); 
    		model.addAttribute("age", age); 
    		model.addAttribute("familyList", this.resumeService.getFamilyList(memberId)); 
    		
    		
    		
    		
    		if(resumePrintItemList!=null)
    		{
	    		for(int i=0; i<resumePrintItemList.length; i++)
	    		{
	    			if(resumePrintItemList[i].equals("military")) { model.addAttribute("military", this.resumeService.getMilitary(memberId));  }
	    			else if(resumePrintItemList[i].equals("academic")) 	{ 
	    				model.addAttribute("academicPrint", true);
	    				model.addAttribute("academicHigh", this.resumeService.getAcademicHigh(memberId)); 
	    				model.addAttribute("academicUnivList", this.resumeService.getAcademicUnivList(memberId)); 
	    				
	    			}
	    			else if(resumePrintItemList[i].equals("oa")) 		{ model.addAttribute("oa", this.resumeService.getOA(memberId));  }
	    			else if(resumePrintItemList[i].equals("license")) 	{ model.addAttribute("licenseList", this.resumeService.getLicenseList(memberId));  }
	    			else if(resumePrintItemList[i].equals("langAbility")) { model.addAttribute("langAbilityList", this.resumeService.getLanguageAbilityList(memberId));  }
	    			else if(resumePrintItemList[i].equals("langExam")) 	{ model.addAttribute("languageExamList", this.resumeService.getLanguageExamList(memberId));  }
	    			else if(resumePrintItemList[i].equals("award")) 	{ model.addAttribute("awardList", this.resumeService.getAwardList(memberId));  }
	    			else if(resumePrintItemList[i].equals("career")) 	{ model.addAttribute("careerList", this.resumeService.getCareerList(memberId));  }
	    			else if(resumePrintItemList[i].equals("voluntary")) { model.addAttribute("voluntaryList", this.resumeService.getVoluntaryList(memberId));  }
	    			else if(resumePrintItemList[i].equals("education")) { model.addAttribute("educationList", this.resumeService.getEducationList(memberId));  }
	    			else if(resumePrintItemList[i].equals("project")) 	{ model.addAttribute("projectList", this.resumeService.getProjectList(memberId));  }
	    			else if(resumePrintItemList[i].equals("write")) 	{ model.addAttribute("writeList", this.resumeService.getWriteList(memberId));  }
	    			else if(resumePrintItemList[i].equals("global")) 	{ model.addAttribute("globalList", this.resumeService.getGlobalList(memberId));  }
	    			else if(resumePrintItemList[i].equals("swot")) 		{ model.addAttribute("swot", this.resumeService.getSwot(memberId));  }
	    		}
    		}

    	}
    	else
    	{
    		
    	}
    	
    	if(printJasoOption.equals("true"))
    	{
    		
    		if(jasoPrintItemList!=null)
    		{
	    		List<Qna> qnaList = new ArrayList<Qna>();
	    		for(int i=0; i<jasoPrintItemList.length; i++)
	    		{
	    			qnaList.add(this.jasoService.getQna(Integer.parseInt(jasoPrintItemList[i])));
	    		}
	    		model.addAttribute("qnaList", qnaList); 	    		
    		}
    		
    	}
    	else
    	{
    		
    	}
    	
    	
//    	String printResumeOption=true
//    	String resume-print-item=resume-military
//    	String resume-print-item=resume-academic
//    	String resume-print-item=resume-oa
//    	String resume-print-item=resume-license
//    	String resume-print-item=resume-langExam
//    	String resume-print-item=resume-award
//    	String resume-print-item=resume-career
//    	String resume-print-item=resume-voluntary
//    	String resume-print-item=resume-education
//    	String resume-print-item=resume-project
//    	String resume-print-item=resume-write
//    	String resume-print-item=resume-global
//    	String resume-print-item=resume-swot
//    	String printJasoOption=true
//    	String jaso-print-item=145
//    	String jaso-print-item=146
//    	String jaso-print-item=147
//    	String jaso-print-item=148
//    	String print-template=pt1;
    	
	    
        return "print/print-preview";
    }
    
 
    
}
