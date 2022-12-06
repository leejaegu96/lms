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
    // 강사로그인
    public Index teacherLoginProc(Index dto) {
    	return sqlSession.selectOne(namespace + ".teacherLoginProc", dto);
    }
    
    public Index watchedOne(Index dto) {
    	return sqlSession.selectOne(namespace + ".watchedOne", dto);
    }
    
    public Index notWatched(Index dto) {
    	return sqlSession.selectOne(namespace + ".notWatched", dto);
    }
   

    // 회원가입
    public int signUpProc(Index dto) {
        return sqlSession.insert(namespace + ".signUpProc", dto);
    }
    public int teacherSignUpProc(Index dto) {
    	return sqlSession.insert(namespace + ".teacherSignUpProc", dto);
    }
    
    //강의 상세 
    public Index lecturedetail(Index dto) {
        return sqlSession.selectOne(namespace + ".lecturedetail", dto);
    }
    
    //강의 챕터
    public List<Index> chapterlist(Index dto) {
        return sqlSession.selectList(namespace + ".chapterlist", dto);
    }
    public List<Index> chapterHeadlist(Index dto) {
    	return sqlSession.selectList(namespace + ".chapterHeadlist", dto);
    }
    
    //강의 챕터
    public List<Index> lectureDetail(Index dto) {
    	return sqlSession.selectList(namespace + ".lectureDetail", dto);
    }
    
    //홈화면
    public List<Index> lectureRand(Index dto) {
    	return sqlSession.selectList(namespace + ".lectureRand", dto);
    }
    public List<Index> lectureNew(Index dto) {
    	return sqlSession.selectList(namespace + ".lectureNew", dto);
    }
    
    // 댓글
    public List<Index> selectComment(IndexVo vo) {
        return sqlSession.selectList(namespace + ".selectComment", vo);
    }
    public int regComment(Index dto) {
        return sqlSession.insert(namespace + ".regComment", dto);
    }
    public int selectCommentCount (IndexVo vo) {
        return sqlSession.selectOne(namespace + ".selectCommentCount", vo);
    }
    public int deleteComment(IndexVo vo) {
        return sqlSession.delete(namespace + ".deleteComment", vo);
    }

}
