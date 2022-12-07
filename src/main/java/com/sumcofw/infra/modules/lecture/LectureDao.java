package com.sumcofw.infra.modules.lecture;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class LectureDao {
	@Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.sumcofw.infra.modules.lecture.LectureMapper";
    
    //코드 리스트
    public List<Lecture> lectureList(LectureVo vo) {
    	return sqlSession.selectList(namespace + ".lectureList", vo);
    }
    public int selectOneCount(LectureVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao result: " + result);
		return result;
	}
}
