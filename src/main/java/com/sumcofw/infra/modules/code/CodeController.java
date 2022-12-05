package com.sumcofw.infra.modules.code;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code")
public class CodeController {
	
//	@Autowired
//    CodeServiceImpl service;

    @RequestMapping(value = "/codeList")
    public String codeList(Model model) throws Exception {
        return "infra/code/xdmin/codeList";
    }
	
}
