package com.sumcofw.infra.modules.lecturer;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class LecturerServiceImpl implements LecturerService{
	
	@Autowired
	LecturerDao dao;
	
	@Override
	public Lecturer selectOneLecturer(Lecturer dto) throws Exception {
        return dao.selectOneLecturer(dto);
    }
	
	@Override
	public List<Lecturer> selectLecture() throws Exception {
		return dao.selectLecture();
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
	public List<Lecturer> selectChapterList() throws Exception {
		return dao.selectChapterList();
	}
	
	@Override
	public Lecturer selectLectureOne(Lecturer dto) throws Exception{
		return dao.selectLectureOne(dto);
	}
}
