package com.sumcofw.infra.modules.index;

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

import com.sumcofw.infra.common.constants.Constants;
import com.sumcofw.infra.modules.member.MemberServiceImpl;

@Controller
@RequestMapping(value = "/index/")
public class IndexController {

    @Autowired
    IndexServiceImpl service;
    
    @Autowired
    MemberServiceImpl service2;

    @RequestMapping(value = "home")
    public String home(Index dto, Model model) throws Exception {
    	List<Index> Rand = service.lectureRand(dto);
    	List<Index> New = service.lectureNew(dto);
    	model.addAttribute("Rand", Rand);
    	model.addAttribute("New", New);
        return "infra/index/home";
    }

    @RequestMapping(value = "login")
    public String login(Model model) {

        return "infra/index/login";
    }

    /**
     * 로그인 프로세스
     * 
     * @param Index       dto
     * @param httpSession
     * @return 성공시 success, 실패시 fail
     * @throws Exception
     */
    @RequestMapping(value = "loginProc")
    @ResponseBody
    public Map<String, Object> loginProc(Index dto, HttpSession httpSession) throws Exception {

        Map<String, Object> returnMap = new HashMap<String, Object>();
        Index rtMember = service.loginProc(dto);

        if (rtMember != null) {
            // 로그인 성공, 세션 부여
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
            httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
            httpSession.setAttribute("sessName", rtMember.getIfmmName());
            httpSession.setAttribute("sessType", 1);
            returnMap.put("rt", "success");
        } else {
            // 로그인 실패
            returnMap.put("rt", "fail");
        }

        return returnMap;
    }
    @RequestMapping(value = "teacherLoginProc")
    @ResponseBody
    public Map<String, Object> teacherLoginProc(Index dto, HttpSession httpSession) throws Exception {
    	
    	Map<String, Object> returnMap = new HashMap<String, Object>();
    	Index rtMember = service.teacherLoginProc(dto);
    	
    	if (rtMember != null) {
    		// 로그인 성공, 세션 부여 
    		httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
    		httpSession.setAttribute("sessSeq", rtMember.getIftcSeq());
    		httpSession.setAttribute("sessName", rtMember.getIftcName());
    		httpSession.setAttribute("sessType", 2);
    		returnMap.put("rt", "success");
    	} else {
    		// 로그인 실패
    		returnMap.put("rt", "fail");
    	}
    	
    	return returnMap;
    }

    /**
     * 로그아웃 프로세스(할당된 세션 해제)
     * 
     * @param httpSession
     * @return success
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "logoutProc")
    public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>();
        httpSession.invalidate();
        returnMap.put("rt", "success");
        return returnMap; 
    }

    @RequestMapping(value = "signUp")
    public String signUp(Model model) {

        return "infra/index/signUp";
    }

    /**
     * 회원가입 프로세스
     * 
     * @param Index dto
     * @return 성공시 success, 실패시 fail
     * @throws Exception
     */
    @RequestMapping(value = "signUpProc")
    @ResponseBody
    public Map<String, Object> signUpProc(Index dto) throws Exception {

        Map<String, Object> returnMap = new HashMap<String, Object>();
        int result = service.signUpProc(dto);

        if (result == 1) {
            returnMap.put("rt", "success");
        } else {
            returnMap.put("rt", "fail");
        }

        return returnMap;
    }
    @RequestMapping(value = "teacherSignUpProc")
    @ResponseBody
    public Map<String, Object> teacherSignUpProc(Index dto) throws Exception {
    	
    	Map<String, Object> returnMap = new HashMap<String, Object>();
    	int result = service.teacherSignUpProc(dto);
    	
    	if (result == 1) {
    		returnMap.put("rt", "success");
    	} else {
    		returnMap.put("rt", "fail");
    	}
    	
    	return returnMap;
    }

    @RequestMapping(value = "findPassword")
    public String findPassword(Model model) {

        return "infra/index/findPassword";
    }

    @RequestMapping(value = "category")
    public String category(Locale locale, Model model) {

        return "infra/index/category";
    }

    @RequestMapping(value = "lectureDetail")
    public String lectureDetail(Index dto, Model model) throws Exception {

        System.out.println("강의 상세보기 페이지 (강의 시퀀스) == " + dto.getIltSeq());
        
        Index result = service.lecturedetail(dto);
        
        // 렉처 시퀀스, 렉처 제목,챕터 시퀀스, 챕터 제목, 강의명
        List<Index> chapters = service.chapterlist(dto);
        List<Index> chapterHead = service.chapterHeadlist(dto);
        
        model.addAttribute("lecturedetail", result);
        model.addAttribute("chapterlist",chapters);
        model.addAttribute("chapterHead",chapterHead);
        
        return "infra/index/lectureDetail";
    }

    @RequestMapping(value = "lectureView")
    public String lectureView(Index dto, Model model) throws Exception {
    	
    	if(dto.getHistoryCheck() == 1) {
    		Index result2 = service.watchedOne(dto);
    		model.addAttribute("video",result2);
    	} else if(dto.getHistoryCheck() == 0){
    		Index result2 = service.notWatched(dto); 
    		model.addAttribute("video",result2);
    	}
    	
    	List<Index> result = service.lectureDetail(dto);
    	model.addAttribute("lectureDetail",result);
    
    	
        return "infra/index/lectureView";
    }

}
