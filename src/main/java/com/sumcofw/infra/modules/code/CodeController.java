package com.sumcofw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code")
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	public void setSearchAndPaging(CodeVo vo) throws Exception {

		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		List<Code> list = service.codeList(vo);
		model.addAttribute("list", list);
		return "infra/code/xdmin/codeList";
	}

}
