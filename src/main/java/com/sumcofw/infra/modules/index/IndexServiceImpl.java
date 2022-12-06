package com.sumcofw.infra.modules.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumcofw.infra.common.util.UtilSecurity;

@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    IndexDao dao;
    
    // 로그인
    public Index loginProc(Index dto) throws Exception {
        // 비밀번호 암호화
        dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
        return dao.loginProc(dto);
    }
    // 강사 로그인
    public Index teacherLoginProc(Index dto) throws Exception {
    	// 비밀번호 암호화
    	dto.setIftcPassword(UtilSecurity.encryptSha256(dto.getIftcPassword()));
    	return dao.teacherLoginProc(dto);
    }
    
    // 회원가입
    @Override
    public int signUpProc(Index dto) throws Exception {
        // 비밀번호 암호화
        dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
        return dao.signUpProc(dto);
    }
    @Override
    public int teacherSignUpProc(Index dto) throws Exception {
    	// 비밀번호 암호화
    	dto.setIftcPassword(UtilSecurity.encryptSha256(dto.getIftcPassword()));
    	return dao.teacherSignUpProc(dto);
    }

    @Override
    public Index lecturedetail(Index dto) throws Exception {
        return dao.lecturedetail(dto);
    }
    
    @Override
    public Index watchedOne(Index dto) throws Exception {
    	return dao.watchedOne(dto);
    }
    
    @Override
    public Index notWatched(Index dto) throws Exception {
    	return dao.notWatched(dto);
    }
    
   
    
    @Override
    public List<Index> chapterlist(Index dto) throws Exception {
        return dao.chapterlist(dto);
    }
    @Override
    public List<Index> chapterHeadlist(Index dto) throws Exception {
    	return dao.chapterHeadlist(dto);
    }
    
    @Override
    public List<Index> lectureDetail(Index dto) throws Exception {
    	return dao.lectureDetail(dto);
    }
    
    @Override
    public List<Index> lectureRand(Index dto) throws Exception {
    	return dao.lectureRand(dto);
    }
    @Override
    public List<Index> lectureNew(Index dto) throws Exception {
    	return dao.lectureNew(dto);
    }
    
    // ## 강의 댓글

    /* 댓글 조회 */
    @Override
    public List<Index> selectComment(IndexVo vo) throws Exception {
        return dao.selectComment(vo);
    }
    /* 댓글 등록 */
    @Override
    public int regComment(Index dto) throws Exception {
        return dao.regComment(dto);
    }
    /* 댓글 카운트 */
    @Override
    public int selectCommentCount(IndexVo vo) throws Exception {
        return dao.selectCommentCount(vo);
    }
    /* 댓글 삭제 */
    @Override
    public int deleteComment(IndexVo vo) throws Exception {
        return dao.deleteComment(vo);
    }
    
}
