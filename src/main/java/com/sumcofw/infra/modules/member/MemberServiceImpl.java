package com.sumcofw.infra.modules.member;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumcofw.infra.common.util.UtilDateTime;



@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public int orderInsert(Member dto) throws Exception {
		
		Date now = UtilDateTime.nowDate();
		
		SimpleDateFormat sdf0;
		sdf0 = new SimpleDateFormat(dto.getIfmmSeq()+"-yyyyMMddHHmmss");
		System.out.println(sdf0.format(now));
		
		dto.setIodNumber(sdf0.format(now));
		dto.setIodPayDateTime(now);
        return dao.orderInsert(dto);
    }
	
	@Override
	public int orderDetailInsert(Member dto) throws Exception {
				
        return dao.orderDetailInsert(dto);
    }
	
	@Override
	public Member orderResult(Member dto) throws Exception {
		
		return dao.orderResult(dto);
	}
	
	@Override
	public List<Member> orderDetailList(Member dto) throws Exception {
		
		return dao.orderDetailList(dto);
	}
}
