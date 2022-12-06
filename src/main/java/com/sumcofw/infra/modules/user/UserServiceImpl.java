package com.sumcofw.infra.modules.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
    UserDao dao;
	
	@Override
    public List<User> userList(UserVo vo) throws Exception {
        return dao.userList(vo);
    }
	@Override
	public int selectOneCount(UserVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
}
