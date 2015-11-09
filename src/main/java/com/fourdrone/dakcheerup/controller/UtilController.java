package com.fourdrone.dakcheerup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/util")
public class UtilController {
	
	@RequestMapping(method = RequestMethod.GET)
    public String getUtil(ModelMap model) {
    	
        return "util/util-pay";
    }
	
	@RequestMapping(value="/pay", method = RequestMethod.GET)
    public String getPay(ModelMap model) {
    	
        return "util/util-pay";
    }
	
	@RequestMapping(value="/photo", method = RequestMethod.GET)
    public String getPhotoSize(ModelMap model) {
    	
        return "util/util-photo";
    }
	
	@RequestMapping(value="/hakjum", method = RequestMethod.GET)
    public String getHakjum(ModelMap model) {
    	
        return "util/util-hakjum";
    }
	
	@RequestMapping(value="/spell", method = RequestMethod.GET)
    public String getSpell(ModelMap model) {
    	
        return "util/util-spell";
    }
	
	@RequestMapping(value="/english-converter", method = RequestMethod.GET)
    public String getEnglishConverter(ModelMap model) {
    	
        return "util/util-eng-converter";
    }


}
