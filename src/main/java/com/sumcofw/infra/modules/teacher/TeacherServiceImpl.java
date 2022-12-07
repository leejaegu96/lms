package com.sumcofw.infra.modules.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class TeacherServiceImpl implements TeacherService {
	
	@Autowired
    TeacherDao dao;
	
	@Override
    public List<Teacher> teacherList(TeacherVo vo) throws Exception {
        return dao.teacherList(vo);
    }
	@Override
	public int selectOneCount(TeacherVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
}
