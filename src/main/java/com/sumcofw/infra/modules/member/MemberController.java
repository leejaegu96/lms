package com.sumcofw.infra.modules.member;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
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
	public String purchaseHistory(Member dto, Model model) throws Exception {
		
		List<Member> paymentList = service.paymentList(dto);
		model.addAttribute("paymentList",paymentList);
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
	public String purchased(Member dto, Model model) throws Exception {
		
		System.out.println("purchased 실행 ");
		
		Member orderResult = service.orderResult(dto);
		List<Member> orderDeatilList = service.orderDetailList(dto);
		
		model.addAttribute("orderResult",orderResult);
		model.addAttribute("detailList",orderDeatilList);
		
		return "infra/main/purchased";
	}
	
	@RequestMapping(value = "successKakao")
	public String successKakao(Member dto, Model model) throws Exception {
		
		return "infra/main/successKakao";
	}
	
	@RequestMapping(value = "failKakao")
	public String failKakao(Member dto, Model model) throws Exception {
		
		return "infra/main/failKakao";
	}
	
	@RequestMapping(value = "cancelKakao")
	public String cancelKakao(Member dto, Model model) throws Exception {
		
		return "infra/main/cancelKakao";
	}
	
	@ResponseBody
	@RequestMapping(value = "watchedCheck")
	public Map<String, Object> watchedCheck(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member result = service.selectOneWatch(dto);
		
		if(result == null) {
			System.out.println("null입니다 ");
			
			Member result2 = service.selectFirstChapter(dto); 
			System.out.println(result2.getIctSeq());
			
			returnMap.put("chapter", result2.getIctSeq());
			returnMap.put("rt", "fail");	
		} else {
			System.out.println("값을 발견했습니다 ");
			returnMap.put("rt", "success");	
			returnMap.put("chapter", result.getWrIctSeq());
		}
		
		
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "orderInsert")
	public Map<String, Object> orderInsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(dto.getIfmmSeq());
		int result = service.orderInsert(dto);
		System.out.println("orderInsert 실행!");
		
		System.out.println(dto.getIodNumber());
		
		returnMap.put("rt", "success");
		returnMap.put("iodSeq", dto.getIodSeq());

		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "orderDetailInsert")
	public Map<String, Object> orderDetailInsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("orderDetailInsert 실행 ");
		System.out.println(dto.getIodSeq());
		System.out.println(dto.getIfmmSeq());
		
		int result = service.orderDetailInsert(dto);
		
		returnMap.put("rt", "success");
			
		return returnMap;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "kakaopay.cls")
	public String kakaopay(Member dto) throws Exception{
	
		System.out.println("카카카카카카카캌카오 실행@@@@@@@@@@@@@@@@@@@@@@");
	
		try {
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection serverConnection = (HttpURLConnection) address.openConnection();
			serverConnection.setRequestMethod("POST");
			serverConnection.setRequestProperty("Authorization", "KakaoAK 93a8dee403775eafaa0c0fa084046986");
			serverConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			serverConnection.setDoOutput(true); //dooutput은 연결을 통해 넣어줄게 있냐 없냐여서 있다라고 하고싶기에 트루를 넣음; 인풋은 안넣어도됨,커넥션 생성되면 기본적으로 인풋생성됨;
			 
			String param = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8080/member/successKakao&fail_url=http://localhost:8080/member/failKakao&cancel_url=http://localhost:8080/member/cancelKakao";
			OutputStream iwillgive = serverConnection.getOutputStream();			
			DataOutputStream iwillgiveudata = new DataOutputStream(iwillgive);			
			iwillgiveudata.writeBytes(param);
			iwillgiveudata.close(); // 그만 쓸꺼다 그리고 플러쉬 알아서 플러쉬			
			int result = serverConnection.getResponseCode();
			
			InputStream receiveData;
			
			if(result == 200) {
				receiveData = serverConnection.getInputStream();
			} else {
				receiveData = serverConnection.getErrorStream();
			}
			
			InputStreamReader iwillread = new InputStreamReader(receiveData);  // 바이트로 데이터를 주고받음, 문자열로 형변환해야함 
			BufferedReader iwillcast = new BufferedReader(iwillread);
			
			return iwillcast.readLine();
		} catch (MalformedURLException e) { 
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
			
		return "{\"result\":\"NO\"}";
	}	
}
