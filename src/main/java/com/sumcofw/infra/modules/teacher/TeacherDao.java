package com.sumcofw.infra.modules.teacher;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class TeacherDao {
	@Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.sumcofw.infra.modules.teacher.TeacherMapper";
    
    //코드 리스트
    public List<Teacher> teacherList(TeacherVo vo) {
    	return sqlSession.selectList(namespace + ".teacherList", vo);
    }
    public int selectOneCount(TeacherVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao result: " + result);
		return result;
	}
}
