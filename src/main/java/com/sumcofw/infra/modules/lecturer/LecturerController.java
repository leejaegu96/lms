package com.sumcofw.infra.modules.lecturer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/lecturer")
public class LecturerController {
	
	@Autowired
	LecturerServiceImpl service;
	
	
	@RequestMapping(value = "/lectureList")
	public String lectureList(Model model) throws Exception {
		List<Lecturer> list = service.selectLecture();
		model.addAttribute("list", list);
		return "infra/lecturer/lectureList";
	}
	
	@RequestMapping(value = "/memberList")
	public String memberList() throws Exception {
		
		return "infra/lecturer/memberList";
	}
	
	@RequestMapping(value = "/lectureForm")
	public String lectureForm(Lecturer dto, Model model) throws Exception {
		Lecturer result = service.selectLectureOne(dto);
		List<Lecturer> big = service.selectCategory();
		List<Lecturer> small = service.selectCategorySub();
		List<Lecturer> chapter = service.selectChapterList();
		model.addAttribute("item",result);
		model.addAttribute("big", big);
		model.addAttribute("small", small);
		model.addAttribute("chapter", chapter);
		
		return "infra/lecturer/lectureForm";
	}
	
	@ResponseBody
	@RequestMapping(value = "/lectureArray")
	public Map<String, Object> lectureArray(@RequestParam(value="ictTitleList[]") ArrayList<String> ictTitleList, @RequestParam(value="ictVideoUrlList[]") ArrayList<String> ictVideoUrlList ) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		for(String x : ictTitleList) {
			System.out.println(x);
		}
		for(String y : ictVideoUrlList) {
			System.out.println(y);
		}
		
		return returnMap;
	}
	
	@RequestMapping(value = "/lecturerProfile")
	public String lecturerProfile() throws Exception {
		
		return "infra/lecturer/lecturerProfile";
	}
	
	@RequestMapping(value = "/lecturerDetail")
	public String lecturerDetail(Lecturer dto, Model model) throws Exception {
		
		Lecturer result = service.selectOneLecturer(dto);
		model.addAttribute("ltinfo",result);
		
		return "infra/lecturer/lecturerDetail";
	}
}
