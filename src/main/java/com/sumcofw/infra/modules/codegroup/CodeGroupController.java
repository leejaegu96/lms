package com.sumcofw.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value = "/codeGroup")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {

		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );

		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "/codeGroupList")
    public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		List<CodeGroup> list = service.codeGroupList(vo);
		model.addAttribute("list", list);
        return "infra/codegroup/xdmin/codeGroupList";
    }
	
}
