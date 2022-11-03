package com.sumcofw.infra.modules.member;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.sumcofw.infra.modules.index.Index;
import com.sumcofw.infra.modules.index.IndexServiceImpl;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
    IndexServiceImpl service2;
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "dashboard")
    public String dashboard(Locale locale, Model model) {
        
        return "infra/main/dashboard";
    }
	@RequestMapping(value = "purchaseHistory")
	public String purchaseHistory(Locale locale, Model model) {
		
		return "infra/main/purchaseHistory";
	}
	@RequestMapping(value = "wishlist")
	public String wishlist(Locale locale, Model model) {
		
		return "infra/main/wishlist";
	}
	@RequestMapping(value = "print")
	public String print(Locale locale, Model model) {
		
		return "infra/main/print";
	}
	@RequestMapping(value = "profile")
	public String profile(Locale locale, Model model) {
		
		return "infra/main/profile";
	}
	@RequestMapping(value = "modPassword")
	public String modPassword(Locale locale, Model model) {
		
		return "infra/main/modPassword";
	}
	@RequestMapping(value = "orderView")
	public String orderView(Index dto2, Model model) throws Exception {
		
		// 강의 상세보기 페이지에서 구매하기 누르면 바로그 강의 살 수 있게 하는 페이지;
		Index result = service2.lecturedetail(dto2);
		model.addAttribute("oneItem",result);
		
		return "infra/main/orderView";
	}
	@RequestMapping(value = "purchased")
	public String purchased(Locale locale, Model model) {
		
		return "infra/main/purchased";
	}
	
	@ResponseBody
	@RequestMapping(value = "orderInsert")
	public Map<String, Object> orderInsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.orderInsert(dto);
		System.out.println("컨트롤러 실행!");
		
		
		returnMap.put("rt", "success");			
		
		return returnMap;
	}
	
}
