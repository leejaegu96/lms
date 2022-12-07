package com.sumcofw.infra.modules.index;

import java.util.List;



public interface IndexService {

    public Index lecturedetail(Index dto) throws Exception;
    public Index loginProc(Index dto) throws Exception;
    public Index teacherLoginProc(Index dto) throws Exception;
    public Index watchedOne(Index dto) throws Exception;
    public Index notWatched(Index dto) throws Exception;
    public int signUpProc(Index dto) throws Exception;
    public int teacherSignUpProc(Index dto) throws Exception;
    
    // 네이버 로그인, 회원가입 s
    public int naverInst(Index dto) throws Exception;
    public Index snsLoginCheckNaver(Index dto) throws Exception;
    // 네이버 로그인, 회원가입 e
    // 카카오 로그인, 회원가입 s
    public int kakaoInst(Index dto) throws Exception;
    public Index snsLoginCheckKakao(Index dto) throws Exception;
    // 카카오 로그인, 회원가입 e
    
    public List<Index> chapterlist(Index dto) throws Exception;
    public List<Index> chapterHeadlist(Index dto) throws Exception;
    public List<Index> lectureDetail(Index dto) throws Exception;
    public List<Index> lectureRand(Index dto) throws Exception;
    public List<Index> lectureNew(Index dto) throws Exception;
    public List<Index> selectComment(IndexVo vo) throws Exception;
    public int regComment(Index dto) throws Exception;
    public int selectCommentCount (IndexVo vo) throws Exception;
    public int deleteComment(IndexVo vo) throws Exception;
    
}
