package com.sumcofw.infra.modules.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	UserServiceImpl service;

	public void setSearchAndPaging(UserVo vo) throws Exception {

		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "/userList")
	public String userList(@ModelAttribute("vo") UserVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		List<User> list = service.userList(vo);
		model.addAttribute("list", list);
		return "infra/user/xdmin/userList";
	}

}
