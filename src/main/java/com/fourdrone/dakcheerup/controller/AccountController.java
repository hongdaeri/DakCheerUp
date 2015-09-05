package com.fourdrone.dakcheerup.controller;

import com.fourdrone.dakcheerup.domain.member.Member;
import com.fourdrone.dakcheerup.service.AccountService;


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
import java.util.List;


@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired  private AccountService accountService;


    // 로그인 화면 처리
    @RequestMapping(method = RequestMethod.GET)
    public String getAccount(ModelMap model, HttpServletRequest request, HttpSession session) {

       
            return "account/account";
        
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
        Member loginMember = this.accountService.getMemberForLogin(member);
       
            return "redirect:";
       

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

        member.setRegDate(new Timestamp(System.currentTimeMillis()));
        this.accountService.addMember(member);
        return "redirect:test";
    }

}