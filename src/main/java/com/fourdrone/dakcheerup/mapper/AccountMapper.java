package com.fourdrone.dakcheerup.mapper;

import com.fourdrone.dakcheerup.domain.member.Member;

import java.util.ArrayList;

/**
 * Created by h0ngz on 2015. 8. 17..
 */
public interface AccountMapper {
    Member getMember(String memberId);

    void addMember(Member member);

    void modMember(Member member);
    
    void modMemberSignOut(Member member);
    
    void modPhoto(Member member);
    
    void delMember(String memberId);

    ArrayList<Member> getMemberList();

    Member getMemberForLogin(Member member);
}
