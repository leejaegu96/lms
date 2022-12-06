package com.sumcofw.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	
	@Autowired
    CodeGroupDao dao;
	
	@Override
    public List<CodeGroup> codeGroupList(CodeGroupVo vo) throws Exception {
        return dao.codeGroupList(vo);
    }
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
}
