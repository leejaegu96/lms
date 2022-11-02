package com.sumcofw.infra.modules.lecturer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/lecturer")
public class LecturerController {
	
	
	
	@RequestMapping(value = "/lectureList")
	public String lectureList() throws Exception {
		
		return "infra/lecturer/lectureList";
	}
	
	@RequestMapping(value = "/memberList")
	public String memberList() throws Exception {
		
		return "infra/lecturer/memberList";
	}
	
	@RequestMapping(value = "/lectureForm")
	public String lectureForm() throws Exception {
		
		return "infra/lecturer/lectureForm";
	}
	
	@RequestMapping(value = "/lecturerProfile")
	public String lecturerProfile() throws Exception {
		
		return "infra/lecturer/lecturerProfile";
	}
	
	@RequestMapping(value = "/lecturerDetail")
	public String lecturerDetail() throws Exception {
		
		return "infra/lecturer/lecturerDetail";
	}
}
