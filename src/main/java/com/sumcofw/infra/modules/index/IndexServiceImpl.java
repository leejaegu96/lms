package com.sumcofw.infra.modules.index;

<<<<<<< HEAD
import java.util.List;
=======
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
    
    // 회원가입
    @Override
    public int signUpProc(Index dto) throws Exception {
        // 비밀번호 암호화
        dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
        return dao.signUpProc(dto);
    }
>>>>>>> refs/heads/jin

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class IndexServiceImpl implements IndexService{
	
	@Autowired
	IndexDao dao;
	
	@Override
	public Index lecturedetail(Index dto) throws Exception{
		
		Index result = dao.lecturedetail(dto);
		
		return result;
	}
}
