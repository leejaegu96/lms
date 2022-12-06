package com.sumcofw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
    CodeDao dao;
	
	@Override
    public List<Code> codeList(CodeVo vo) throws Exception {
        return dao.codeList(vo);
    }
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
}
