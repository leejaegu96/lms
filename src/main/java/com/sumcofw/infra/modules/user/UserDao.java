package com.sumcofw.infra.modules.user;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class UserDao {
	@Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.sumcofw.infra.modules.user.UserMapper";
    
    //코드 리스트
    public List<User> userList(UserVo vo) {
    	return sqlSession.selectList(namespace + ".userList", vo);
    }
    public int selectOneCount(UserVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("dao result: " + result);
		return result;
	}
}
