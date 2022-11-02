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

@Controller
@RequestMapping(value = "/index/")
public class IndexController {

    @Autowired
    IndexServiceImpl service;

    @RequestMapping(value = "home")
    public String home(Model model) {

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
        
        model.addAttribute("lecturedetail", result);
        model.addAttribute("chapterlist",chapters);
        
        return "infra/index/lectureDetail";
    }

    @RequestMapping(value = "lectureView")
    public String lectureView(Locale locale, Model model) {

        return "infra/index/lectureView";
    }

}
