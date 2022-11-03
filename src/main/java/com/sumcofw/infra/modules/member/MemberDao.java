package com.sumcofw.infra.modules.member;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class MemberDao {
	
	@Inject									
	@Resource(name = "sqlSession")
	
	private SqlSession sqlSession;				
	
	private static String namespace = "com.sumcofw.infra.modules.member.MemberMapper";
	
	//idOrder에 추가 
    public int orderInsert(Member dto) {
        return sqlSession.insert(namespace + ".orderInsert", dto);
    }
}
