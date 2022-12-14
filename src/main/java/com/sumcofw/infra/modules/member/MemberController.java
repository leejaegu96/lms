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

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sumcofw.infra.common.util.UtilDateTime;
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
	public String print(Member dto, Model model) {
		
		return "infra/main/print";
	}
	@RequestMapping(value = "printPreview")
	public String printPreview(Member dto, Model model) {
		
		return "infra/main/printPreview";
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
		
		// ?????? ???????????? ??????????????? ???????????? ????????? ????????? ?????? ??? ??? ?????? ?????? ?????????;
		Index result = service2.lecturedetail(dto2);
		model.addAttribute("oneItem",result);
		
		return "infra/main/orderView";
	}
	@RequestMapping(value = "purchased")
	public String purchased(Member dto, Model model) throws Exception {
		
		System.out.println("purchased ?????? ");
		
		Member orderResult = service.orderResult(dto);
		List<Member> orderDeatilList = service.orderDetailList(dto);
		
		model.addAttribute("orderResult",orderResult);
		model.addAttribute("detailList",orderDeatilList);
		
		return "infra/main/purchased";
	}
	
	@RequestMapping(value = "successKakao")
	public String successKakao(Member dto, Model model, HttpSession httpSession) throws Exception {
		 
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		String order = (String) httpSession.getAttribute("tid");
		String total = (String) httpSession.getAttribute("total");
		String lecture = (String) httpSession.getAttribute("iltSeq");
		String date = (String) httpSession.getAttribute("date");
		String iltSeq = (String) httpSession.getAttribute("iltSeq");
						
		dto.setIfmmSeq(ifmmSeq);
		dto.setIodTotalPrice(total);
		dto.setIodPayDateTime(UtilDateTime.nowDate());
		dto.setIodNumber(order);
		dto.setIltSeq(iltSeq);
		
		int result = service.orderInsert(dto);		
		int result2 = service.orderDetailInsert(dto);
		
		List<Member> orderDeatilList = service.orderDetailList(dto);
		model.addAttribute("detailList",orderDeatilList);
		
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
			System.out.println("null????????? ");
			
			Member result2 = service.selectFirstChapter(dto); 
			
			 
			returnMap.put("chapter", result2.getIctSeq());
			returnMap.put("rt", "fail");	
		} else {
			System.out.println("?????? ?????????????????? ");
			returnMap.put("rt", "success");	
			returnMap.put("chapter", result.getWrIctSeq());
		}	
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "updateLength")
	public Map<String, Object> updateLength(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
				
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "orderInsert")
	public Map<String, Object> orderInsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(dto.getIfmmSeq());
		int result = service.orderInsert(dto);
		System.out.println("orderInsert ??????!");
		
		System.out.println(dto.getIodNumber());
		
		returnMap.put("rt", "success");
		returnMap.put("iodSeq", dto.getIodSeq());

		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "orderDetailInsert")
	public Map<String, Object> orderDetailInsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("orderDetailInsert ?????? ");
		System.out.println(dto.getIodSeq());
		System.out.println(dto.getIfmmSeq());
		
		int result = service.orderDetailInsert(dto);
		
		returnMap.put("rt", "success");
			
		return returnMap;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "kakaopay.cls")	
	public String kakaopay(Member dto, HttpSession httpSession) throws Exception{
	
		System.out.println("?????????????????????????????? ??????@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println(dto.getIodTotalPrice());
		System.out.println(dto.getIltSeq());
		System.out.println(dto.getIfmmSeq()); 
	
		try {
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection serverConnection = (HttpURLConnection) address.openConnection();
			serverConnection.setRequestMethod("POST");
			serverConnection.setRequestProperty("Authorization", "KakaoAK 950b8907943f760f72e65a70043e6726");
			serverConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			serverConnection.setDoOutput(true); //dooutput??? ????????? ?????? ???????????? ?????? ???????????? ???????????? ??????????????? ????????? ??????; ????????? ???????????????,????????? ???????????? ??????????????? ???????????????;
			 
			//String param = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=????????????&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8080/member/successKakao&fail_url=http://localhost:8080/member/failKakao&cancel_url=http://localhost:8080/member/cancelKakao";
			String cid = "cid=TC0ONETIME";
			String partnerOrder = "partner_order_id=" + dto.getIfmmSeq();
			String partnerUser = "partner_user_id=partner_user_id";
			String itemName = "item_name=" + dto.getIltSeq();
			String quantity = "quantity=1";
			String totalAmount = "total_amount="+dto.getIodTotalPrice();
			String vatAmount = "vat_amount=200";
			String taxFree = "tax_free_amount=0";
			String approvalUrl = "approval_url=http://lkl.nextlevel.pe.kr/member/successKakao";
			String failUrl = "fail_url=http://lkl.nextlevel.pe.kr/member/failKakao";
			String cancelUrl = "cancel_url=http://lkl.nextlevel.pe.kr/member/cancelKakao";
			String n = "&";
			
			String param = cid + n + partnerOrder + n + partnerUser + n + itemName + n + quantity + 
					n + totalAmount + n + vatAmount + n + taxFree + n + approvalUrl + n + failUrl + n + cancelUrl;
			
			
			OutputStream iwillgive = serverConnection.getOutputStream();			
			DataOutputStream iwillgiveudata = new DataOutputStream(iwillgive);			
			iwillgiveudata.writeBytes(param);
			iwillgiveudata.close(); // ?????? ????????? ????????? ????????? ????????? ?????????			
			int result = serverConnection.getResponseCode();
			
			
			InputStream receiveData;
			
			if(result == 200) {
				receiveData = serverConnection.getInputStream();
			} else {
				receiveData = serverConnection.getErrorStream();
			}
			
			InputStreamReader iwillread = new InputStreamReader(receiveData);  // ???????????? ???????????? ????????????, ???????????? ?????????????????? 
			BufferedReader iwillcast = new BufferedReader(iwillread);
			
			String str = iwillcast.readLine();									//????????? json?????? ?????????; json?????? ?????? ?????? ?????? map?????? list??????; map?????? ?????? ?????????;
			
			ObjectMapper mapper = new ObjectMapper();
			
			Map<String, Object> map = mapper.readValue(str, Map.class);
			
			
			System.out.println(map.get("tid"));
			
			String tid = (String) map.get("tid");
			String date = (String) map.get("created_at");
			httpSession.setAttribute("tid", tid );
			httpSession.setAttribute("total", dto.getIodTotalPrice());
			httpSession.setAttribute("iltSeq", dto.getIltSeq());
			httpSession.setAttribute("sessSeq", dto.getIfmmSeq());
			httpSession.setAttribute("date", date);
			
			
			return str;
		} catch (MalformedURLException e) { 
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
			
		return "{\"result\":\"NO\"}";									// json ?????? ???????????  -> json ????????? ???????????? ???????????? ????????? ??????;
	}	
	
	@ResponseBody
	@RequestMapping(value = "kakaopay.approve")
	public String approve(Member dto, HttpSession httpSession) throws Exception{
	
		System.out.println("@@@@@@@@@approve ??????@@@@@@@@@@@@@@@@@@@@@@" + dto.getTid() + "@@@@@" + dto.getPg());
	
		try {
			URL address = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection serverConnection = (HttpURLConnection) address.openConnection();
			serverConnection.setRequestMethod("POST");
			serverConnection.setRequestProperty("Authorization", "KakaoAK 93a8dee403775eafaa0c0fa084046986");
			serverConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			serverConnection.setDoOutput(true); //dooutput??? ????????? ?????? ???????????? ?????? ???????????? ???????????? ??????????????? ????????? ??????; ????????? ???????????????,????????? ???????????? ??????????????? ???????????????;
			 
			//String param = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=????????????&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8080/member/successKakao&fail_url=http://localhost:8080/member/failKakao&cancel_url=http://localhost:8080/member/cancelKakao";
			String cid = "cid=TC0ONETIME";
			String tid = "tid="+dto.getTid();
			System.out.println(tid);
			String partnerOrder = "partner_order_id=" + httpSession.getAttribute("sessSeq"); 
			String partnerUser = "partner_user_id=partner_user_id";
			String pgToekn = "pg_token="+dto.getPg();
			
			String n = "&";
			
			String param = cid + n + tid + n + partnerOrder + n + partnerUser + n + pgToekn;
			
			OutputStream iwillgive = serverConnection.getOutputStream();			
			DataOutputStream iwillgiveudata = new DataOutputStream(iwillgive);			
			iwillgiveudata.writeBytes(param);
			iwillgiveudata.close(); // ?????? ????????? ????????? ????????? ????????? ?????????			
			int result = serverConnection.getResponseCode();
			
			InputStream receiveData;
			
			if(result == 200) {
				receiveData = serverConnection.getInputStream();
			} else {
				receiveData = serverConnection.getErrorStream();
			}
			
			InputStreamReader iwillread = new InputStreamReader(receiveData);  // ???????????? ???????????? ????????????, ???????????? ?????????????????? 
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
