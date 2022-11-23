package com.sumcofw.infra.modules.index;

import java.util.List;

public interface IndexService {

    public Index lecturedetail(Index dto) throws Exception;
    public Index loginProc(Index dto) throws Exception;
    public Index teacherLoginProc(Index dto) throws Exception;
    public Index watchedOne(Index dto) throws Exception;
    public Index notWatched(Index dto) throws Exception;
    public int signUpProc(Index dto) throws Exception;
    public int teacherSignUpProc(Index dto) throws Exception;
    public List<Index> chapterlist(Index dto) throws Exception;
    public List<Index> chapterHeadlist(Index dto) throws Exception;
    public List<Index> lectureDetail(Index dto) throws Exception;
    
}
