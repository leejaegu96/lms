package com.sumcofw.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class CodeDao {
	@Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.sumcofw.infra.modules.code.CodeMapper";
    
    //코드 리스트
    public List<Code> codeList(CodeVo vo) {
    	return sqlSession.selectList(namespace + ".codeList", vo);
    }
    public int selectOneCount(CodeVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao result: " + result);
		return result;
	}
}
