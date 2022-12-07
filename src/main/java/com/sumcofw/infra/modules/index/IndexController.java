package com.sumcofw.infra.modules.index;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    
	/* 네이버 로그인 s */
	@RequestMapping(value = "naverLoginProc")
	@ResponseBody
	public Map<String, Object> naverLoginProc(Index dto, HttpSession httpSession) throws Exception {
    	System.out.println("네이버로그인시작");
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Index naverLogin = service.snsLoginCheckNaver(dto);
		System.out.println("test : " + dto.getToken());
		System.out.println(naverLogin);
		if (naverLogin == null) {
			service.naverInst(dto);
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
			session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(naverLogin, httpSession);
			System.out.println(naverLogin.getIfmmSeq());
			System.out.println(naverLogin.getIfmmName());
			System.out.println(naverLogin.getIfmmId());
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
    public void session(Index dto, HttpSession httpSession) {
		 httpSession.setAttribute("sessSeq", dto.getIfmmSeq());    
	     httpSession.setAttribute("sessName", dto.getIfmmName());
	     httpSession.setAttribute("sessId", dto.getIfmmId());
	     httpSession.setAttribute("sessType", 3);
	}
    /* 네이버 로그인 e */
    /* 카카오 로그인 s */
    @ResponseBody
	@RequestMapping(value = "kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Index dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
	    Index kakaoLogin = service.snsLoginCheckKakao(dto);
		
		System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			System.out.println(kakaoLogin.getIfmmSeq());
			System.out.println(kakaoLogin.getIfmmName());
			System.out.println(kakaoLogin.getIfmmId());
			System.out.println(kakaoLogin.getIfmmEmail());
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
    /* 카카오 로그인 e */
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
    /**
     * 댓글 조회
     * @param vo
     * @param dto
     * @param model
     * @return 댓글 조회한 리스트
     * @throws Exception
     */
    @RequestMapping(value = "lectureCommentAjaxLita")
    public String lectureCommentAjaxLita(@ModelAttribute("vo") IndexVo vo, Model model) throws Exception {
        
        vo.setParamsPaging(service.selectCommentCount(vo));
        List<Index> commentList = service.selectComment(vo);
        model.addAttribute("commentList", commentList);
        
        return "infra/index/commentAjaxLita";
    }
    @RequestMapping(value = "lectureCommentInst")
    @ResponseBody
    public  Map<String, Object> regComment(Index dto, Model model) throws Exception {
        
        Map<String, Object> returnMap = new HashMap<String, Object>();
        /*
         * int result = service.regComment(dto);
         * 
         * if (result != 0) {
         * returnMap.put("rt", "success");
         * } else {
         * returnMap.put("rt", "fail");
         * }
         */
        returnMap.put("rt", (service.regComment(dto) != 0) ? "success" : "fail");
        
        return returnMap;
    }
    
    /**
     * 댓글 삭제
     * @param vo
     * @param model
     * @return 삭제 결과
     * @throws Exception
     */
    @RequestMapping(value = "lectureCommentDele")
    @ResponseBody
    public Map<String, Object> deleteComment(@ModelAttribute("vo") IndexVo vo, Model model) throws Exception {
        
        Map<String, Object> returnMap = new HashMap<String, Object>();
        int result = service.deleteComment(vo);

        if (result != 0) {
            returnMap.put("rt", "success");
        } else {
            returnMap.put("rt", "fail");
        }
        
        return returnMap;
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
