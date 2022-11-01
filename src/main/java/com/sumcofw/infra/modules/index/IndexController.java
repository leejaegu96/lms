package com.sumcofw.infra.modules.index;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/index/")
public class IndexController {
	
	@Autowired
    IndexServiceImpl service;
	
    @RequestMapping(value = "home")
    public String home(Model model) {
        
        return "infra/index/home";
    }
    
    @RequestMapping(value = "login")
    public String login(Model model) {
        
        return "infra/index/login";
    }
    
    @RequestMapping(value = "signUp")
    public String signUp(Model model) {
        
        return "infra/index/signUp";
    }
    
    @RequestMapping(value = "findPassword")
    public String findPassword(Model model) {
        
        return "infra/index/findPassword";
    }
    
    @RequestMapping(value = "category")
    public String category(Locale locale, Model model) {
        
        return "infra/index/category";
    }
    
    @RequestMapping(value = "lectureDetail")
    public String lectureDetail(Index dto, Model model) throws Exception {
        
    	System.out.println("@@@@@@@@@@@ + " + dto.getIltSeq());
    	
    	Index result = service.lecturedetail(dto);
    	
    	model.addAttribute("lecturedetail",result);
    	
        return "infra/index/lectureDetail";
    }
    
    @RequestMapping(value = "lectureView")
    public String lectureView(Locale locale, Model model) {
        
        return "infra/index/lectureView";
    }

}
