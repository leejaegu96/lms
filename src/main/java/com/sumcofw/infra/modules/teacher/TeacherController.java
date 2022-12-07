package com.sumcofw.infra.modules.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/teacher")
public class TeacherController {

	@Autowired
	TeacherServiceImpl service;

	public void setSearchAndPaging(TeacherVo vo) throws Exception {

		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "/teacherList")
	public String userList(@ModelAttribute("vo") TeacherVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		List<Teacher> list = service.teacherList(vo);
		model.addAttribute("list", list);
		return "infra/user/xdmin/teacherList";
	}

}
