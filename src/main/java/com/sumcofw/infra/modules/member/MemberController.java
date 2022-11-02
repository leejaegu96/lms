package com.sumcofw.infra.modules.member;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
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
	public String orderView(Locale locale, Model model) {
		
		return "infra/main/orderView";
	}
	@RequestMapping(value = "purchased")
	public String purchased(Locale locale, Model model) {
		
		return "infra/main/purchased";
	}
	
}
