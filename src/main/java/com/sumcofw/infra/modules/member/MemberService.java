package com.sumcofw.infra.modules.member;



public interface MemberService {
	
	public int orderInsert(Member dto) throws Exception; 
	public int orderDetailInsert(Member dto) throws Exception; 
}
