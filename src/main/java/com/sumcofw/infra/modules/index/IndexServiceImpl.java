package com.sumcofw.infra.modules.index;

import java.util.List;

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
