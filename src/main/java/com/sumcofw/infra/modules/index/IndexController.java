package com.sumcofw.infra.modules.index;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/index/")
public class IndexController {
    
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
    public String lectureDetail(Locale locale, Model model) {
        
        return "infra/index/lectureDetail";
    }
    
    @RequestMapping(value = "lectureView")
    public String lectureView(Locale locale, Model model) {
        
        return "infra/index/lectureView";
    }

}
