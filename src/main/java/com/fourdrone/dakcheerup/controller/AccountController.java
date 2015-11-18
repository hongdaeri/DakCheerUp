package com.fourdrone.dakcheerup.controller;

import com.fourdrone.dakcheerup.domain.Jaso;
import com.fourdrone.dakcheerup.domain.Resume;
import com.fourdrone.dakcheerup.domain.jaso.Group;
import com.fourdrone.dakcheerup.domain.jaso.File;
import com.fourdrone.dakcheerup.domain.jaso.Qna;
import com.fourdrone.dakcheerup.domain.jaso.QnaLog;
import com.fourdrone.dakcheerup.domain.member.Member;
import com.fourdrone.dakcheerup.domain.resume.Academic;
import com.fourdrone.dakcheerup.domain.resume.AcademicHigh;
import com.fourdrone.dakcheerup.domain.resume.Brother;
import com.fourdrone.dakcheerup.domain.resume.Military;
import com.fourdrone.dakcheerup.domain.resume.OA;
import com.fourdrone.dakcheerup.domain.resume.Profile;
import com.fourdrone.dakcheerup.domain.resume.ResumeConfig;
import com.fourdrone.dakcheerup.domain.resume.Strength;
import com.fourdrone.dakcheerup.domain.resume.Swot;
import com.fourdrone.dakcheerup.service.AccountService;
import com.fourdrone.dakcheerup.service.JasoService;
import com.fourdrone.dakcheerup.service.ResumeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.fourdrone.dakcheerup.util.DES;

@Controller
@Transactional (propagation=Propagation.SUPPORTS)
@RequestMapping("/account")
public class AccountController {

    @Autowired  private AccountService accountService;
    @Autowired private ResumeService resumeService;
    @Autowired private JasoService jasoService;
    @Autowired private HttpSession session;

    // 로그인 화면 처리
    @RequestMapping(method = RequestMethod.GET)
    public String getAccount(@RequestParam(value="error", required=false) String error, ModelMap model, HttpServletRequest request, HttpSession session) {
    	
        // 자동로그인 - Id, Pw 쿠키 존재하면 자동로그인
        String memberId = null;
        String memberPassword = null;
        Cookie[] cookies = request.getCookies();
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("mi"))
                memberId = cookies[i].getValue();
            if (cookies[i].getName().equals("mp"))
                memberPassword = cookies[i].getValue();
        }
        
        // 쿠키상에 id와 pw가 모두 있다면
        if(memberId!=null && memberPassword != null)
        {
            //복호화 한뒤
            Member member = new Member();
            member.setMemberId(DES.decrypt(memberId));
            member.setMemberPassword(DES.decrypt(memberPassword));
            //로그인 처리 하기. ( 세션만들기) 
            Member loginMember = this.accountService.getMemberForLogin(member);
            session.setAttribute("memberLoginInfo", loginMember.getMemberId());
            session.setAttribute("memberName", loginMember.getMemberName());
           
            return "redirect:/";
        }
        else
        {
            return "account/account";
        }
   }

    //회원정보 수정 
    @RequestMapping(value="/modify", method = RequestMethod.GET)
    public String getModify(ModelMap model) {
    	String memberId = (String)session.getAttribute("memberLoginInfo");
		
		Profile profile = this.resumeService.getProfile(memberId);
	    model.addAttribute("profile", profile);  
	    
	    Member member = this.accountService.getMember(memberId);
	    model.addAttribute("member", member);	    
	    
        return "account/modify";
    }
    @RequestMapping(value="/modify", method = RequestMethod.POST)
    public String postModify(ModelMap model,  HttpServletRequest request) {
    	String memberId = (String)session.getAttribute("memberLoginInfo");
		
    	// member table update
    	String memberName = request.getParameter("memberName");
    	String newPassword = request.getParameter("newPassword");
    	Member member = this.accountService.getMember(memberId);
    	member.setMemberName(memberName);
    	if(newPassword!=null) { member.setMemberPassword(newPassword); }    	
    	this.accountService.modMember(member);
    	
    	//profile table update
    	String profileName = memberName;    	
    	String profilePhone = request.getParameter("profilePhone");
    	String profileEmail = request.getParameter("profileEmail");
    	String profileJuminFront = request.getParameter("profileJuminFront");
		Profile profile = this.resumeService.getProfile(memberId);
		profile.setProfileName(profileName);
		profile.setProfilePhone(profilePhone);
		profile.setProfileEmail(profileEmail);
		profile.setProfileJuminFront(profileJuminFront);		
		this.resumeService.modProfile(profile);
	  
		session.setAttribute("loadMsg", "member-modify");
	    
        return "redirect:/account/modify";
    }
    
    // 회원 탈퇴 처리 (토글)
    @RequestMapping(value="/signOut", method = RequestMethod.GET)
    public String signOut(ModelMap model,  HttpServletRequest request) {
    	String memberId = (String)session.getAttribute("memberLoginInfo");
		
    	// member table update
    	Member member = this.accountService.getMember(memberId);
    	String state = member.getMemberSignOutRequest();
    	if(state.equals("Y"))
    		member.setMemberSignOutRequest("N");
    	else
    		member.setMemberSignOutRequest("Y");
    	
    	member.setMemberSignOutRequestDate(new Timestamp(System.currentTimeMillis()));
    	
    	this.accountService.modMemberSignOut(member);
    	session.setAttribute("loadMsg", "member-modify");
	    
        return "redirect:/account/modify";
    }
    
    
    

    //로그인 처리
    @RequestMapping(value ="/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("member") Member member, HttpSession session, HttpServletResponse response, HttpServletRequest request){
       
    	// 데이터베이스에서 입력받은 데이터를 토대로 쿼리검색을 해서 그 결과를 Member라는 객체에 저장한다.
    	Member loginMember = this.accountService.getMemberForLogin(member);

    	if(loginMember != null)
        {

             if (request.getParameter("autoLogin")!=null) {
                // 암호화
                String en_id = DES.encrypt(loginMember.getMemberId());
                String en_pw = DES.encrypt(loginMember.getMemberPassword());
                
                //쿠키생성
                Cookie miCookie = new Cookie("mi", en_id);
                miCookie.setMaxAge(30 * 24 * 60 * 60);
                response.addCookie(miCookie);

                Cookie mpCookie = new Cookie("mp", en_pw);
                mpCookie.setMaxAge(30 * 24 * 60 * 60);
                response.addCookie(mpCookie);
            }
            // 세션등록 
            session.setAttribute("memberLoginInfo",loginMember.getMemberId());
            session.setAttribute("memberName", loginMember.getMemberName());
            session.setAttribute("memberPhoto", loginMember.getMemberPhoto());
            
            return "redirect:/";
        }
        else {
            return "redirect:";
        }

    }
    // 로그아웃 처리
    @RequestMapping(value ="/logout", method = RequestMethod.GET)
    public String logout(HttpSession session, HttpServletResponse response, HttpServletRequest request) {

        // 쿠키 삭제
        Cookie[] cookies = request.getCookies();
        for(int i=0; i < cookies.length; i++)
        {
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);
        }

        // 세션 삭제.
        session.setAttribute("memberLoginInfo", null);
        session.setAttribute("memberName", null);
        session.setAttribute("loadMsg", "logout");
        return "redirect:";
    }

    //회원가입 처리
    @Transactional(propagation=Propagation.REQUIRED)
    @RequestMapping(value ="/signUp", method = RequestMethod.POST)
    public String signUp(@ModelAttribute("member") Member member) {
    	
    	String memberId = member.getMemberId();
    	String memberName = member.getMemberName();
    	
    	// 현재시각 구하기.
    	Timestamp time = new Timestamp(System.currentTimeMillis());
		
    	
    	// MEMBER 테이블 생성.
        member.setRegDate(time);
        member.setMemberPhoto("/resources/img/default_profile.jpg");
        this.accountService.addMember(member);
        
        // RESUME 테이블 생성.
        Resume resume = new Resume(); 
        resume.setResumeFirstRegDate(time);
        resume.setMemberId(memberId);
        this.resumeService.addResume(resume);
        
        
        /* RESUME 단일 테이블 생성*/        
	        // RESUME_CONFIG 테이블 생성.
	        ResumeConfig resumeConfig = new ResumeConfig();
	        resumeConfig.setMemberId(memberId);
	        resumeConfig.setResumeConfigViewItem("NNNNNNNNNNNNNNNNNNNN");
	        resumeConfig.setResumeConfigLastRegDate(time);        
	        this.resumeService.addResumeConfig(resumeConfig);
	        
	        // RESUME - PROFILE 테이블 생성.
	        Profile profile = new Profile();
	        profile.setMemberId(memberId);
	        profile.setProfileName(memberName);
	        profile.setProfileRegDate(time);
	        this.resumeService.addProfile(profile);
	        
	        // RESUME - Brother 테이블 생성.
	        Brother brother = new Brother();
	        brother.setMemberId(memberId);
	        brother.setBrotherRegDate(time);
	        this.resumeService.addBrother(brother);
	        
	        // RESUME - Military 테이블 생성.
	        Military military = new Military();
	        military.setMemberId(memberId);
	        military.setMilitaryRegDate(time);
	        this.resumeService.addMilitary(military);
	        
	        // RESUME - Academic 테이블 생성.
	        Academic academic = new Academic();
	        academic.setMemberId(memberId);
	        this.resumeService.addAcademic(academic);
	        
	        // RESUME - AcademicHigh 테이블 생성.
	        AcademicHigh academicHigh = new AcademicHigh();
	        academicHigh.setMemberId(memberId);
	        academicHigh.setAcademicHighRegDate(time);
	        this.resumeService.addAcademicHigh(academicHigh);
	        
	        // RESUME - OA 테이블 생성.
	        OA oa = new OA();
	        oa.setMemberId(memberId);
	        oa.setOaRegDate(time);
	        this.resumeService.addOA(oa);
	        
	        // RESUME - strength 테이블 생성.
	        Strength strength = new Strength();
	        strength.setMemberId(memberId);   
	        strength.setStrengthItem("NNNNNNNNNNNNNNNNNNNNNNNNNNNNNN");
	        strength.setCharacterItem("NNNNNNNNNNNNNNNNNNNNNNNNNNNNNN");
	        strength.setStrengthRegDate(time);
	        this.resumeService.addStrength(strength);
	        
	        // RESUME - Swot 테이블 생성.
	        Swot swot = new Swot();
	        swot.setMemberId(memberId);
	        swot.setSwotRegDate(time);
	        this.resumeService.addSwot(swot);
	        
	    /* RESUME 단일 테이블 생성 끝 */
	        
	        
        // RESUME 테이블 생성.
        Jaso jaso = new Jaso(); 
        jaso.setJasoFirstRegDate(time);
        jaso.setMemberId(memberId);
        this.jasoService.addJaso(jaso);
        
        
        /* 자소서 기본 그룹 및 기본 파일, 자소문항 생성 */   
        
        	// 기본그룹 생성
        	Group group = new Group();
        	group.setMemberId(memberId);
        	group.setGroupName("기본그룹");
        	group.setGroupRegDate(time);
        	this.jasoService.addGroup(group);
        	
        	// 기본그룹 생성정보 가져오기        	
        	group =  jasoService.getGroupLastItem(memberId);
        	int groupNo = group.getGroupNo();        	
        	
        	//기본 파일생성
        	File file = new File();
        	file.setMemberId(memberId);
        	file.setGroupNo(groupNo);
        	file.setFileName("기본 자기소개서");
        	file.setFileTrashYn("N");
        	file.setFileInterestYn("N");
        	file.setFileRegDate(time);
        	this.jasoService.addFile(file);
        
        	
        	// 기본 파일 생성정보 가져오기
        	file =  jasoService.getFileLastItem(memberId);
        	int fileNo = file.getFileNo();
        	
        	//기본 문항 생성 
        	Qna qna = new Qna();
        	qna.setFileNo(fileNo);
        	qna.setMemberId(memberId);
        	qna.setQnaQuestion("성장과정을 구체적으로 기술해 주십시오.");
        	qna.setQnaAnswer("");
        	qna.setQnaInterestYn("N");
        	qna.setQnaRegDate(time);
        	this.jasoService.addQna(qna);        	
        
        	qna.setQnaQuestion("자신의 성격에 대해 구체적으로 기술해 주십시오.");        
        	this.jasoService.addQna(qna);
        	
        	qna.setQnaQuestion("사회생활 및 경력사항에 대하여 구체적으로 기술해 주십시오. ");
        	this.jasoService.addQna(qna);
       
        	qna.setQnaQuestion("나의 인생관과 목표에 대하여 기술해 주십시오. ");     
        	this.jasoService.addQna(qna);
        
        	qna.setQnaQuestion("입사 후 포부에 대하여 구체적으로 기술해 주십시오.");      
        	this.jasoService.addQna(qna);
        	
        	session.setAttribute("loadMsg", "member-join");
        	
        /* 자소서 기본 그룹 및 기본 파일, 자소문항 생성  끝 */
        
        return "redirect:";
    }
    

}