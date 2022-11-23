package com.sumcofw.infra.modules.lecturer;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
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

//		int j = 0;
//		for (MultipartFile multipartFile : dto.getUploadedImage()) {
//
//			if (!multipartFile.isEmpty()) {
//
//				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//				UtilUpload.upload(multipartFile, pathModule, dto);
//
//				dto.setType("2");
//				dto.setLuDefaultNy(1);
//				dto.setLuSort(j + 1);
//				dto.setLuPseq(dto.getIchSeq());
//
////				dao.insertLecturetUploaded(dto);
//			}
//			j++;
//		}

		return result;
	}
}
