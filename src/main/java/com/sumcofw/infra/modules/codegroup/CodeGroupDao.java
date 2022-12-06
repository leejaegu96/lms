package com.sumcofw.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class CodeGroupDao {
	@Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.sumcofw.infra.modules.codegroup.CodeGroupMapper";
    
    //코드 리스트
    public List<CodeGroup> codeGroupList(CodeGroupVo vo) {
    	return sqlSession.selectList(namespace + ".codeGroupList", vo);
    }
    public int selectOneCount(CodeGroupVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao result: " + result);
		return result;
	}
}
