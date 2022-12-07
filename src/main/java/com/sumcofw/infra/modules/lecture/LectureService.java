package com.sumcofw.infra.modules.lecture;

import java.util.List;

public interface LectureService {
	
	public List<Lecture> lectureList(LectureVo vo) throws Exception;
	public int selectOneCount(LectureVo vo) throws Exception;
	
}
