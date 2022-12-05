package com.sumcofw.infra.modules.codegroup;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup")
public class CodeGroupController {

	@RequestMapping(value = "/codeGroupList")
    public String codeGroupList(Model model) throws Exception {
        return "infra/codegroup/xdmin/codeGroupList";
    }
	
}
