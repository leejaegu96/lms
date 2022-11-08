package com.sumcofw.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public int orderInsert(Member dto) throws Exception; 
	public int orderDetailInsert(Member dto) throws Exception; 
	public Member orderResult(Member dto) throws Exception; 
	public List<Member> orderDetailList(Member dto) throws Exception; 
}
