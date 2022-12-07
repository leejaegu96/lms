package com.sumcofw.infra.modules.lecture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/lecture")
public class LectureController {

	@Autowired
	LectureServiceImpl service;

	public void setSearchAndPaging(LectureVo vo) throws Exception {

		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "/lectureList")
	public String lectureList(@ModelAttribute("vo") LectureVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		List<Lecture> list = service.lectureList(vo);
		model.addAttribute("list", list);
		return "infra/user/xdmin/lectureList";
	}

}
