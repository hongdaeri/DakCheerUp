package com.fourdrone.dakcheerup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/calendar")
public class CalendarController {
    @RequestMapping(method = RequestMethod.GET)
    public String getCalendar(ModelMap model) {
        model.addAttribute("message", "Hello world!!!");
        return "calendar/calendar";
    }
}