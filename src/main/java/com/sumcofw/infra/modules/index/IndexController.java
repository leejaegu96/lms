package com.sumcofw.infra.modules.index;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/index/")
public class IndexController {
    
    @RequestMapping(value = "")
    public String home(Locale locale, Model model) {
        
        return "infra/index/home";
    }
}
