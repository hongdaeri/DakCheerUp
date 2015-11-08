package com.fourdrone.dakcheerup.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Created by h0ngz on 2015. 8. 20..
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{

        HttpSession session = request.getSession();
        String memberId = (String) session.getAttribute("memberLoginInfo");
            // memberLoginInfo 세션값이 null 일 경우
        if(memberId == null)
        {
        	PrintWriter writer=response.getWriter();
        	writer.println("<script>alert('로그인이 필요한 서비스 입니다. 로그인 페이지로 이동합니다.');</script>");
            //로그인 페이지로 redirect
            response.sendRedirect("/account");
            return false;

        } else {
            return true;
        }

    }


}
