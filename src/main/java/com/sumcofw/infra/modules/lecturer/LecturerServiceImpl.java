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
import com.sumcofw.infra.common.util.UtilUpload;

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

    // 강사 프로필 사진 불러오기
    @Override
    public List<Lecturer> teacherUploaded(Lecturer dto) throws Exception {
        return dao.teacherUploaded(dto);
    }

    /**
     * 강의 등록 함수
     */
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
                uploadImg(multipartFile, dto, "lectureUpload");
                dto.setSort(j);
                dao.insertUploaded(dto);
            }
            j++;
        }
        return result;
    }
    
    @Override
    public int lecturerUpdt(Lecturer dto) throws Exception {
        
        // idLecture update
        int result = dao.updateLecture(dto);

        // jsp에서 받은 array string -> Java List
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(dto.getData(), Map.class);

        List<Map<String, Object>> dataList = new ArrayList<Map<String, Object>>();
        dataList = (List<Map<String, Object>>) map.get("data");

        List<Map<String, Object>> data = new ArrayList<Map<String, Object>>();

        // 챕터 개수만큼 반복
        for (int i = 0; i < dataList.size(); i++) {

            // 챕터 제목 삽입
            dto.setIchTitle(dataList.get(i).get("header").toString());
            dao.updateChapterHeader(dto);

            data = (List<Map<String, Object>>) dataList.get(i).get("body");

            for (int j = 0; j < data.size(); j++) {
                // 챕터 소제목, 링크 삽입
                dto.setIctTitle(data.get(j).get("subTitle").toString());
                dto.setIctVideoUrl(data.get(j).get("link").toString());
                dao.updateChapter(dto);
            }
        }

        // 이미지 업로드
        int j = 0;
        for (MultipartFile multipartFile : dto.getUploadedImage()) {
            if (!multipartFile.isEmpty()) {
                uploadImg(multipartFile, dto, "lectureUpload");
                dto.setSort(j);
                dao.updateLecturetUploaded(dto);
            }
            j++;
        }
        return result;
    }

    @Override
    public int updateTeacher(Lecturer dto) throws Exception {
        int result = dao.updateTeacher(dto);

//		for (MultipartFile multipartFile : dto.getUploadedProfileImage()) {
//
//			System.out.println(!multipartFile.isEmpty());
//
//			if (!multipartFile.isEmpty() == true) {
//
//				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//				UtilUpload.uploadTeacher(multipartFile, pathModule, dto);
//
//				dto.setTableName("teacherUpload");
//				dto.setType(1);
//				dto.setDefaultNy(1);
//				dto.setSort(1);
//				dto.setPseq(dto.getMainKey());
//
//				dao.insertTeacherUploaded(dto);
//
//			} else {
//				if (dto.getExt() == null) {
//					System.out.println("업데이트 변경된 사항이 없다.");
//				} else {
//					String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl",
//							"");
//					UtilUpload.uploadTeacher(multipartFile, pathModule, dto);
//
//					dto.setTableName("teacherUpload");
//					dto.setType(1);
//					dto.setDefaultNy(1);
//					dto.setSort(1);
//					dto.setPseq(dto.getMainKey());
//
//					dao.updateTeacherUploaded(dto);
//				}
//			}
//		}

        System.out.println(result);
        return result;
    }

    @Override
    public int updateTeacherUploaded(Lecturer dto) throws Exception {
        int result = dao.updateTeacherUploaded(dto);

        for (MultipartFile multipartFile : dto.getUploadedProfileImage()) {

            System.out.println(!multipartFile.isEmpty());

            if (!multipartFile.isEmpty() == true) {

                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                UtilUpload.uploadTeacher(multipartFile, pathModule, dto);

                dto.setTableName("teacherUpload");
                dto.setType(1);
                dto.setDefaultNy(1);
                dto.setSort(1);
                dto.setPseq(dto.getMainKey());

                dao.insertTeacherUploaded(dto);

            } else {
                if (dto.getExt() == null) {
                    System.out.println("업데이트 변경된 사항이 없다.");
                } else {
                    String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl",
                            "");
                    UtilUpload.uploadTeacher(multipartFile, pathModule, dto);

                    dto.setTableName("teacherUpload");
                    dto.setType(1);
                    dto.setDefaultNy(1);
                    dto.setSort(1);
                    dto.setPseq(dto.getMainKey());

                    dao.updateTeacherUploaded(dto);
                }
            }
        }

        System.out.println(result);
        return result;
    }
    
    /**
     * 업로드 함수
     * @param multipartFile
     * @param dto
     * @param tableName
     * @throws Exception
     */
    public void uploadImg(MultipartFile multipartFile, Lecturer dto, String tableName) throws Exception {
        String className = dto.getClass().getSimpleName().toString().toLowerCase();
        String fileName = multipartFile.getOriginalFilename();
        String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
        String uuid = UUID.randomUUID().toString();
        String uuidFileName = uuid + "." + ext;
        String pathModule = className;
        String nowString = UtilDateTime.nowString();
        String pathDate = nowString.substring(0, 4) + "/" + nowString.substring(5, 7) + "/"
                + nowString.substring(8, 10);
        String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
        String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";

        File uploadPath = new File(path);

        if (!uploadPath.exists()) {
            System.out.println("directory is doesn't exists !");
            uploadPath.mkdirs();
            System.out.println("make directory " + uploadPath);
        } else {
            // by pass
        }

        String rootPath = System.getProperty("user.dir");
        System.out.println("현재 프로젝트의 경로 : " + rootPath);

        multipartFile.transferTo(new File(path + uuidFileName));

        dto.setPath(pathForView);
        dto.setOriginalName(fileName);
        dto.setUuidName(uuidFileName);
        dto.setExt(ext);
        dto.setSize(multipartFile.getSize());

        dto.setTableName(tableName);
        dto.setType(2);
//      dto.setDefaultNy();
        dto.setPseq(dto.getIltSeq());
    }

}
