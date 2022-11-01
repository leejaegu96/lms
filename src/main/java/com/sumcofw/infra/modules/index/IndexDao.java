package com.sumcofw.infra.modules.index;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class IndexDao {
	
	@Inject									
	@Resource(name = "sqlSession")				
	private SqlSession sqlSession;				
	
	private static String namespace = "com.sumcofw.infra.modules.index.IndexMapper";
	
	public Index lecturedetail(Index dto){				 
		
		return sqlSession.selectOne(namespace + ".lecturedetail", dto); 
	}
	
}
