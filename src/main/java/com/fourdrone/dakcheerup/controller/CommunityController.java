package com.fourdrone.dakcheerup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/community")
public class CommunityController {
    @RequestMapping(method = RequestMethod.GET)
    public String getCommunity(ModelMap model) {
    	
        return "community/community";
    }
}
