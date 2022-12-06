package com.sumcofw.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> codeGroupList(CodeGroupVo vo) throws Exception;
	public int selectOneCount(CodeGroupVo vo) throws Exception;
	
}
