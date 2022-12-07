package com.sumcofw.infra.modules.teacher;

import java.util.List;

public interface TeacherService {
	
	public List<Teacher> teacherList(TeacherVo vo) throws Exception;
	public int selectOneCount(TeacherVo vo) throws Exception;
	
}
