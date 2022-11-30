package com.sumcofw.infra.modules.lecturer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/lecturer")
public class LecturerController {

    @Autowired
    LecturerServiceImpl service;

    public String sessSeq = "";

    @RequestMapping(value = "/lectureList")
    public String lectureList(Lecturer dto, HttpServletRequest httpServletRequest, Model model) throws Exception {

        HttpSession httpSession = httpServletRequest.getSession();
        sessSeq = (String) httpSession.getAttribute("sessSeq");

        dto.setMainKey(sessSeq);

        List<Lecturer> list = service.selectLecture(dto);
        model.addAttribute("list", list);
        return "infra/lecturer/lectureList";
    }

    @RequestMapping(value = "/memberList")
    public String memberList() throws Exception {

        return "infra/lecturer/memberList";
    }

    @RequestMapping(value = "/lectureForm")
    public String lectureForm(Lecturer dto, Model model) throws Exception {
        
        // 카테고리 조회
        List<Lecturer> big = service.selectCategory();
        List<Lecturer> small = service.selectCategorySub();
        model.addAttribute("big", big);
        model.addAttribute("small", small);
        
        // 강의 시퀀스가 있을때만 쿼리 날림
        if (dto.getIltSeq() != null) {
            Lecturer result = service.selectLectureOne(dto);
            List<Lecturer> chapter = service.selectChapterList(dto);
            List<Lecturer> head = service.selectChapterHeaderList(dto);
            model.addAttribute("item", result);
            model.addAttribute("chapter", chapter);
            model.addAttribute("head", head);
        } else {
            // by pass
        }
        
        return "infra/lecturer/lectureForm";
    }

    @ResponseBody
    @RequestMapping(value = "/lectureArray")
    public Map<String, Object> lectureArray(@RequestParam(value = "ictTitleList[]") ArrayList<String> ictTitleList,
            @RequestParam(value = "ictVideoUrlList[]") ArrayList<String> ictVideoUrlList) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>();

        for (String x : ictTitleList) {
            System.out.println(x);
        }
        for (String y : ictVideoUrlList) {
            System.out.println(y);
        }

        return returnMap;
    }

    @RequestMapping(value = "/lecturerProfile")
    public String lecturerProfile(Lecturer dto, HttpServletRequest httpServletRequest, Model model) throws Exception {

        HttpSession httpSession = httpServletRequest.getSession();
        sessSeq = (String) httpSession.getAttribute("sessSeq");

        dto.setMainKey(sessSeq);

        Lecturer item = service.selectTeacher(dto);
        List<Lecturer> sns = service.selectTeacherSns(dto);
        List<Lecturer> image = service.teacherUploaded(dto);
        model.addAttribute("item", item);
        model.addAttribute("sns", sns);
        model.addAttribute("image", image);

        return "infra/lecturer/lecturerProfile";
    }

    @ResponseBody
    @RequestMapping(value = "/teacherUpdt")
    public Map<String, Object> teacherUpdt(Lecturer dto) throws Exception {

        Map<String, Object> rtMap = new HashMap<String, Object>();

        int result = service.updateTeacher(dto);

        if (result != 0) {
            rtMap.put("rt", "success");
        } else {
            rtMap.put("rt", "fail");
        }

        return rtMap;
    }

    @RequestMapping(value = "/updateTeacherUploaded")
    public String updateTeacherUploaded(Lecturer dto, Model model, HttpServletRequest httpServletRequest,
            RedirectAttributes redirectAttributes) throws Exception {

        HttpSession httpSession = httpServletRequest.getSession();
        sessSeq = (String) httpSession.getAttribute("sessSeq");

        dto.setMainKey(sessSeq);

        int result = service.updateTeacherUploaded(dto);

        model.addAttribute("result", result);

        return "redirect:lecturer/lecturerProfile";
    }
    
    
    /**
     * 강의 등록
     * @param Lecturer dto
     * @return 성공시 rt.success, 등록된 강의 시퀀스 리턴
     * @throws Exception
     */
    @RequestMapping(value = "/lectureInst")
    @ResponseBody
    public Map<String, Object> lecturerInst(Lecturer dto) throws Exception {

        Map<String, Object> rtMap = new HashMap<String, Object>();
        int result = service.lecturerInst(dto);

        if (result != 0) {
            rtMap.put("rt", "success");
            rtMap.put("key", dto.getIltSeq());
        } else {
            rtMap.put("rt", "fail");
        }

        return rtMap;
    }
    
    /**
     * 강의 업데이트
     * @param Lecturer dto
     * @return 성공시 rt.success, 수정된 강의 시퀀스 리턴
     * @throws Exception
     */
    @RequestMapping(value = "/lectureUpdt")
    @ResponseBody
    public Map<String, Object> lectureUpdt(Lecturer dto) throws Exception {
        
        Map<String, Object> rtMap = new HashMap<String, Object>();
        int result = service.lecturerUpdt(dto);
        
        if (result != 0) {
            rtMap.put("rt", "success");
            rtMap.put("key", dto.getIltSeq());
        } else {
            rtMap.put("rt", "fail");
        }
        
        return rtMap;
    }

    @RequestMapping(value = "/lecturerDetail")
    public String lecturerDetail(Lecturer dto, Model model) throws Exception {

        Lecturer result = service.selectOneLecturer(dto);
        model.addAttribute("ltinfo", result);

        return "infra/lecturer/lecturerDetail";
    }
}
