package com.sumcofw.infra.modules.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public int orderInsert(Member dto) throws Exception {
        return dao.orderInsert(dto);
    }
}
