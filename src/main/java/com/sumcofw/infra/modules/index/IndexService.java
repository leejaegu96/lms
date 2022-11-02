package com.sumcofw.infra.modules.index;

public interface IndexService {

    public Index lecturedetail(Index dto) throws Exception;
    public Index loginProc(Index dto) throws Exception;
    public int signUpProc(Index dto) throws Exception;

}
