package com.sumcofw.infra.modules.lecturer;


import java.util.List;

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
	
	//강사 선택
    public Lecturer selectOneLecturer(Lecturer dto) {
        return sqlSession.selectOne(namespace + ".selectOneLecturer", dto);
    }
    
    //강의 목록
    public List<Lecturer> selectLecture(Lecturer dto){
    	return sqlSession.selectList(namespace + ".selectLecture", dto);
    }
    
    // 카테고리 대분류
    public List<Lecturer> selectCategory(){
    	return sqlSession.selectList(namespace + ".selectCategory", "");
    }
    // 카테고리 소분류
    public List<Lecturer> selectCategorySub(){
    	return sqlSession.selectList(namespace + ".selectCategorySub", "");
    }
    // 챕터 리스트
    public List<Lecturer> selectChapterList(Lecturer dto){
    	return sqlSession.selectList(namespace + ".selectChapterList", dto);
    }
    public List<Lecturer> selectChapterHeaderList(Lecturer dto){
    	return sqlSession.selectList(namespace + ".selectChapterHeaderList", dto);
    }
    
    //강의 목록 선택
    public Lecturer selectLectureOne(Lecturer dto) {
        return sqlSession.selectOne(namespace + ".selectLectureOne", dto);
    } 
    //프로필
    public Lecturer selectTeacher(Lecturer dto) {
        return sqlSession.selectOne(namespace + ".selectTeacher", dto);
    } 
    public List<Lecturer> selectTeacherSns(Lecturer dto) {
    	return sqlSession.selectList(namespace + ".selectTeacherSns", dto);
    } 
    
    // 강의 등록
    public int insertLecture(Lecturer dto) {
        return sqlSession.insert(namespace + ".insertLecture", dto);
    }
    public int insertChapterHeader(Lecturer dto) {
        return sqlSession.insert(namespace + ".insertChapterHeader", dto);
    }
    public int insertChapter(Lecturer dto) {
        return sqlSession.insert(namespace + ".insertChapter", dto);
    }
}
