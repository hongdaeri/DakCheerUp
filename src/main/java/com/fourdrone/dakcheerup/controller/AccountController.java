package com.fourdrone.dakcheerup.controller;

import com.fourdrone.dakcheerup.domain.Resume;
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
import com.fourdrone.dakcheerup.service.ResumeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
import java.util.Date;
import java.util.List;
import com.fourdrone.dakcheerup.util.DES;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired  private AccountService accountService;
    @Autowired private ResumeService resumeService;



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
            return "redirect:test";
        }
        else
        {
            return "account/account";
        }
   }

    //테스트
    @RequestMapping(value="/test", method = RequestMethod.GET)
    public String test(ModelMap model) {
        List<Member> memberList = this.accountService.getMemberList();
        model.addAttribute("result", memberList);

        return "account/test";
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
            return "redirect:test";
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
        return "account/account";
    }

    //회원가입 처리
    @RequestMapping(value ="/signUp", method = RequestMethod.POST)
    public String signUp(@ModelAttribute("member") Member member) {
    	
    	String memberId = member.getMemberId();
    	String memberName = member.getMemberName();
    	
    	// 현재시각 구하기.
    	Timestamp time = new Timestamp(System.currentTimeMillis());
		
    	// MEMBER 테이블 생성.
        member.setRegDate(time);
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
        
        return "redirect:test";
    }

}