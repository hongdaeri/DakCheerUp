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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fourdrone.dakcheerup.domain.Resume;
import com.fourdrone.dakcheerup.domain.member.Member;
import com.fourdrone.dakcheerup.domain.resume.*;
import com.fourdrone.dakcheerup.service.AccountService;
import com.fourdrone.dakcheerup.service.ResumeService;

@Controller
@RequestMapping("/resume")
public class ResumeController {

	@Autowired private ResumeService resumeService;
	@Autowired private HttpSession session;
		
	@RequestMapping(value="", method = RequestMethod.GET)
	public String getResume(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    
	    return "resume/resume";
	}
	
	// 기본인적사항 
	@RequestMapping(value="/profile", method = RequestMethod.GET)
	public String getResumeProfile(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);  
	    
	    return "resume/resume-profile";
	}
	
	@RequestMapping(value ="/profile", method = RequestMethod.POST)
    public String postResumeProfile(@ModelAttribute("profile") Profile profile) {  	    	
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
    	// PROFILE 테이블 업데이트
		profile.setMemberId(memberId);
    	profile.setProfileRegDate(new Timestamp(System.currentTimeMillis()));
        this.resumeService.modProfile(profile);
                
        return "resume/resume-profile";
    }
	
	// 추가인적사항 ( 형제관계, 가족관계, 병역사항 ) 
	@RequestMapping(value="/addtion-profile", method = RequestMethod.GET)
	public String getResumeAddtionProfile(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		Brother brother = this.resumeService.getBrother(memberId);
	    model.addAttribute("brother", brother);	 
	    
	    List<Family> familyList = this.resumeService.getFamilyList(memberId);
	    model.addAttribute("familyList", familyList);
	    System.out.println(familyList.toString());
	    
	    Military military = this.resumeService.getMilitary(memberId);
	    model.addAttribute("military", military);	
	    
	    return "resume/resume-addtion-profile";
	}
	
	@RequestMapping(value="/addtion-profile", method = RequestMethod.POST)
	public String postResumeAddtionProfile(ModelMap model, HttpServletRequest request) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		// BROTHER 테이블 업데이트
		Brother brother = new Brother();
		brother.setMemberId(memberId);
		brother.setBrotherRegDate(new Timestamp(System.currentTimeMillis()));
		brother.setBrotherMale(request.getParameter("brotherMale"));
		brother.setBrotherFemale(request.getParameter("brotherFemale"));		
		brother.setBrotherMe(request.getParameter("brotherMe"));		
		this.resumeService.modBrother(brother);
		
		// FAMILY 테이블 업데이트
		Family family = new Family();
		family.setMemberId(memberId);
		family.setFamilyRegDate(new Timestamp(System.currentTimeMillis()));
		family.setFamilyRelation(request.getParameter("familyRelation"));
		family.setFamilyName(request.getParameter("familyName"));			
		family.setFamilyAge(request.getParameter("familyAge"));		
		family.setFamilyJob(request.getParameter("familyJob"));
		family.setFamilyLive(request.getParameter("familyLive"));		
		this.resumeService.addFamily(family);
		
		// MILITARY 테이블 업데이트
		Military military = new Military();
		military.setMemberId(memberId);
		military.setMilitaryRegDate(new Timestamp(System.currentTimeMillis()));
		military.setMilitaryPeriod(request.getParameter("militaryPeriod"));		
		military.setMilitarySection(request.getParameter("militarySection"));
		military.setMilitaryGroup(request.getParameter("militaryGroup"));		
		military.setMilitaryRank(request.getParameter("militaryRank"));		
		military.setMilitaryWork(request.getParameter("militaryWork"));		
		military.setMilitaryReason(request.getParameter("militaryReason"));	
		this.resumeService.modMilitary(military);
		
		return "redirect:/resume/addtion-profile";
	}
	
	
	@RequestMapping(value="/academic", method = RequestMethod.GET)
	public String getResumeAcademic(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);	    
	    return "resume/resume-academic";
	}
	
	// OA 능력
	@RequestMapping(value="/oa", method = RequestMethod.GET)
	public String getResumeOA(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		OA oa = this.resumeService.getOA(memberId);
	    model.addAttribute("oa", oa);     
	    return "resume/resume-oa";
	}
	@RequestMapping(value="/oa", method = RequestMethod.POST)
	public String postResumeOA(	@ModelAttribute("oa") OA oa) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		
		// OA 테이블 업데이트		
		oa.setMemberId(memberId);
		oa.setOaRegDate(new Timestamp(System.currentTimeMillis()));
		this.resumeService.modOA(oa);
		
		return "resume/resume-oa";
	}
	
	
	@RequestMapping(value="/strength", method = RequestMethod.GET)
	public String getResumeCharacter(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);	    
	    return "resume/resume-strength";
	}
	
	@RequestMapping(value="/license", method = RequestMethod.GET)
	public String getResumeLicense(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);	    
	    return "resume/resume-license";
	}
	
	@RequestMapping(value="/lang-ability", method = RequestMethod.GET)
	public String getResumeLangAbility(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);	 
	    return "resume/resume-lang-ability";
	}
	
	@RequestMapping(value="/lang-exam", method = RequestMethod.GET)
	public String getResumeLangExam(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-lang-exam";
	}
	
	
	
	@RequestMapping(value="/award", method = RequestMethod.GET)
	public String getResumeAward(Award award, ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	
		
		model.addAttribute("profile", profile);
	    return "resume/resume-award";
	}
	
	@RequestMapping(value="/career", method = RequestMethod.GET)
	public String getResumeCareer(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-career";
	}
	
	@RequestMapping(value="/voluntary", method = RequestMethod.GET)
	public String getResumeVoluntary(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-voluntary";
	}
	
	@RequestMapping(value="/education", method = RequestMethod.GET)
	  public String getResumeEducation(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-education";
	}
	
	@RequestMapping(value="/project", method = RequestMethod.GET)
	  public String getResumeProject(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-project";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String getResumeWrite(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-write";
	}
	
	@RequestMapping(value="/global", method = RequestMethod.GET)
	public String getResumeGlobal(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-global";
	}
	
	@RequestMapping(value="/swot", method = RequestMethod.GET)
	public String getResumeSwot(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-swot";
	}
	
	@RequestMapping(value="/config", method = RequestMethod.GET)
	public String getResumeConfig(ModelMap model) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);
	    return "resume/resume-config";
	}
	
	
}