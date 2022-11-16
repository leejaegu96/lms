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

    // 로그인
    public Index loginProc(Index dto) {
        return sqlSession.selectOne(namespace + ".loginProc", dto);
    }

    // 회원가입
    public int signUpProc(Index dto) {
        return sqlSession.insert(namespace + ".signUpProc", dto);
    }
    
    //강의 상세 
    public Index lecturedetail(Index dto) {
        return sqlSession.selectOne(namespace + ".lecturedetail", dto);
    }
    
    //강의 챕터
    public List<Index> chapterlist(Index dto) {
        return sqlSession.selectList(namespace + ".chapterlist", dto);
    }
    
    //강의 챕터
    public List<Index> lectureDetail(Index dto) {
    	return sqlSession.selectList(namespace + ".lectureDetail", dto);
    }

}
