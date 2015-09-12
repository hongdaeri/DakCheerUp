package com.fourdrone.dakcheerup.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fourdrone.dakcheerup.domain.Resume;
import com.fourdrone.dakcheerup.domain.resume.*;
import com.fourdrone.dakcheerup.domain.resume.Profile;

import com.fourdrone.dakcheerup.service.AccountService;
import com.fourdrone.dakcheerup.service.ResumeService;

@Controller
@RequestMapping("/resume")
public class ResumeController {

	@Autowired  private AccountService accountService;
	@Autowired private ResumeService resumeService;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String getResume(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume";
	}
		
	@RequestMapping(value="/profile", method = RequestMethod.GET)
	public String getResumeProfile(ModelMap model, HttpSession session) {
		Profile profile = this.resumeService.getProfile((String)session.getAttribute("memberLoginInfo"));
	    model.addAttribute("profile", profile);
	    
	    
	    return "resume/resume-profile";
	}
	
	@RequestMapping(value ="/profile", method = RequestMethod.POST)
    public String signUp(@ModelAttribute("profile") Profile profile, HttpSession session) {  	    	
   
    	// PROFILE 테이블 업데이트
		profile.setMemberId((String)session.getAttribute("memberLoginInfo"));
    	profile.setProfileRegDate(new Timestamp(System.currentTimeMillis()));
        this.resumeService.modProfile(profile);
                
        return "resume/resume-profile";
    }
	
	@RequestMapping(value="/addtion-profile", method = RequestMethod.GET)
	public String getResumeAddtionProfile(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-addtion-profile";
	}
	
	@RequestMapping(value="/academic", method = RequestMethod.GET)
	public String getResumeAcademic(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-academic";
	}
	
	@RequestMapping(value="/oa", method = RequestMethod.GET)
	public String getResumeOA(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-oa";
	}
	
	@RequestMapping(value="/strength", method = RequestMethod.GET)
	public String getResumeCharacter(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-strength";
	}
	
	@RequestMapping(value="/license", method = RequestMethod.GET)
	public String getResumeLicense(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-license";
	}
	
	@RequestMapping(value="/lang-ability", method = RequestMethod.GET)
	public String getResumeLangAbility(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-lang-ability";
	}
	
	@RequestMapping(value="/lang-exam", method = RequestMethod.GET)
	public String getResumeLangExam(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-lang-exam";
	}
	@RequestMapping(value="/award", method = RequestMethod.GET)
	public String getResumeAward(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-award";
	}
	
	@RequestMapping(value="/career", method = RequestMethod.GET)
	public String getResumeCareer(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-career";
	}
	
	@RequestMapping(value="/voluntary", method = RequestMethod.GET)
	public String getResumeVoluntary(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-voluntary";
	}
	
	@RequestMapping(value="/education", method = RequestMethod.GET)
	  public String getResumeEducation(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-education";
	}
	
	@RequestMapping(value="/project", method = RequestMethod.GET)
	  public String getResumeProject(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-project";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String getResumeWrite(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-write";
	}
	
	@RequestMapping(value="/global", method = RequestMethod.GET)
	public String getResumeGlobal(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-global";
	}
	
	@RequestMapping(value="/swot", method = RequestMethod.GET)
	public String getResumeSwot(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-swot";
	}
	
	@RequestMapping(value="/config", method = RequestMethod.GET)
	public String getResumeConfig(ModelMap model) {
	    model.addAttribute("message", "Hello world!!!");
	    return "resume/resume-config";
	}
}