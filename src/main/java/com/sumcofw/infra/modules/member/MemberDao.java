package com.sumcofw.infra.modules.member;

import java.util.List;

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
    
    //idOrder에 추가 
    public int orderDetailInsert(Member dto) {
    	return sqlSession.insert(namespace + ".orderDetailInsert", dto);
    }
    
    //idOrder에 추가 
    public Member orderResult(Member dto) {
    	return sqlSession.selectOne(namespace + ".orderResult", dto);
    }
    
    //idOrder에 추가 
    public List<Member> orderDetailList(Member dto) {
    	return sqlSession.selectList(namespace + ".orderDetailList", dto);
    }
}
