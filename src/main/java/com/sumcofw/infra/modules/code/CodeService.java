package com.sumcofw.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> codeList(CodeVo vo) throws Exception;
	public int selectOneCount(CodeVo vo) throws Exception;
	
}
