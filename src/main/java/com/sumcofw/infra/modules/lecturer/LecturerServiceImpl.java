package com.sumcofw.infra.modules.lecturer;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sumcofw.infra.common.constants.Constants;
import com.sumcofw.infra.common.util.UtilDateTime;

@Service
public class LecturerServiceImpl implements LecturerService {

    @Autowired
    LecturerDao dao;

    @Override
    public Lecturer selectOneLecturer(Lecturer dto) throws Exception {
        return dao.selectOneLecturer(dto);
    }

    @Override
    public List<Lecturer> selectLecture(Lecturer dto) throws Exception {
        return dao.selectLecture(dto);
    }

    @Override
    public List<Lecturer> selectCategory() throws Exception {
        return dao.selectCategory();
    }

    @Override
    public List<Lecturer> selectCategorySub() throws Exception {
        return dao.selectCategorySub();
    }

    @Override
    public List<Lecturer> selectChapterList(Lecturer dto) throws Exception {
        return dao.selectChapterList(dto);
    }

    @Override
    public List<Lecturer> selectChapterHeaderList(Lecturer dto) throws Exception {
        return dao.selectChapterHeaderList(dto);
    }

    @Override
    public Lecturer selectLectureOne(Lecturer dto) throws Exception {
        return dao.selectLectureOne(dto);
    }

    @Override
    public Lecturer selectTeacher(Lecturer dto) throws Exception {
        return dao.selectTeacher(dto);
    }

    @Override
    public List<Lecturer> selectTeacherSns(Lecturer dto) throws Exception {
        return dao.selectTeacherSns(dto);
    }

    // 강의 등록
    @Override
    public int lecturerInst(Lecturer dto) throws Exception {

        // idLecture insert
        // 마지막으로 인서트된 강의 시퀀스 가져오기
        int result = dao.insertLecture(dto);

        // jsp에서 받은 array string -> Java List
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(dto.getData(), Map.class);

        List<Map<String, Object>> dataList = new ArrayList<Map<String, Object>>();
        dataList = (List<Map<String, Object>>) map.get("data");

        List<Map<String, Object>> data = new ArrayList<Map<String, Object>>();

        // 챕터 개수만큼 반복
        for (int i = 0; i < dataList.size(); i++) {

            // 챕터 제목 삽입
            dto.setIchIltSeq(dto.getIltSeq());
            dto.setIchTitle(dataList.get(i).get("header").toString());
            dao.insertChapterHeader(dto);

            data = (List<Map<String, Object>>) dataList.get(i).get("body");

            for (int j = 0; j < data.size(); j++) {

                // 챕토 소제목, 링크 삽입
                dto.setIctIchSeq(dto.getIchSeq());
                dto.setIctTitle(data.get(j).get("subTitle").toString());
                dto.setIctVideoUrl(data.get(j).get("link").toString());
                dao.insertChapter(dto);

            }
        }
        
        // 이미지 업로드
        int j = 0;
        for (MultipartFile multipartFile : dto.getUploadedImage()) {

            if (!multipartFile.isEmpty()) {

                String className = dto.getClass().getSimpleName().toString().toLowerCase();     
                String fileName =  multipartFile.getOriginalFilename();
                String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
                String uuid = UUID.randomUUID().toString();
                String uuidFileName = uuid + "." + ext;
                String pathModule = className;
                String nowString = UtilDateTime.nowString();
                String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
                String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
                String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
                
                File uploadPath = new File(path);
                
                if (!uploadPath.exists()) {
                    uploadPath.mkdir();
                } else {
                    // by pass
                }
                  
                multipartFile.transferTo(new File(path + uuidFileName));
                
                dto.setPath(pathForView);
                dto.setOriginalName(fileName);
                dto.setUuidName(uuidFileName);
                dto.setExt(ext);
                dto.setSize(multipartFile.getSize());
                
                dto.setTableName("lectureUpload");
                dto.setType("2");
//              dto.setDefaultNy();
                dto.setSort(j);
                dto.setPseq(dto.getIltSeq());

                dao.insertUploaded(dto);
            }
            j++;
        }

        return result;
    }
}
