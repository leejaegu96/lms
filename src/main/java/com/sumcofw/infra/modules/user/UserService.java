package com.sumcofw.infra.modules.user;

import java.util.List;

public interface UserService {
	
	public List<User> userList(UserVo vo) throws Exception;
	public int selectOneCount(UserVo vo) throws Exception;
	
}
