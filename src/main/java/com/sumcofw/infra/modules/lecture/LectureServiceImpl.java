package com.sumcofw.infra.modules.lecture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class LectureServiceImpl implements LectureService {
	
	@Autowired
    LectureDao dao;
	
	@Override
    public List<Lecture> lectureList(LectureVo vo) throws Exception {
        return dao.lectureList(vo);
    }
	@Override
	public int selectOneCount(LectureVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
}
