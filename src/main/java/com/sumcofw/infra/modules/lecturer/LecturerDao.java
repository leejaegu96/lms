package com.sumcofw.infra.modules.lecturer;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sumcofw.infra.modules.index.Index;


@Repository
public class LecturerDao {
	
	@Inject									
	@Resource(name = "sqlSession")
	
	private SqlSession sqlSession;				
	
	private static String namespace = "com.sumcofw.infra.modules.lecturer.LecturerMapper";
	
	//강사 선
    public Lecturer selectOneLecturer(Lecturer dto) {
        return sqlSession.selectOne(namespace + ".selectOneLecturer", dto);
    }
	
}
