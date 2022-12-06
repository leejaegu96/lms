package com.sumcofw.infra.modules.index;

public class Index {
	
	//구매목록에서 강의 보기로 넘어올때 시청기록이 있던 강이면 1로 표시하기위한 변수
	
	private Integer historyCheck;
	
	// idLecture table
    private String iltSeq;

    private String iltTitle;
    private String iltBody;
    private String iltPrice;
    
    // idChapterHeader
    
    private String ichSeq;
    private String ichIltSeq;
    private String ichTitle;
    
    // idChapter
    private String ictSort;
    private String ictSeq;
    private String ictTitle;
    private String ictIchSeq;
    private String ictVideoUrl;
    
    //ifraTeacher
    private String iftcName;
    private String iftcSeq;
    private String iftcId;
    private String iftcPassword;
    private String iftcEmail;
    private String iftcDomain;
    private String iftcMobile;
    private String iftcCarrier;
    private String iftcRegDateTime;
    private String iftcModDateTime;
 

    /* Member DTO */
    private String ifmmSeq;
    private String ifmmId;
    private String ifmmName;
    private String ifmmPassword;
    private String ifmmEmail;
    private String ifmmDomain;
    private String ifmmMobile;
    private String ifmmCarrier;
    private String ifmmRegDateTime;
    private String ifmmModDateTime;
    private String ifmmType;
    
    // watchRecord
    
    private String wrSeq;
    private String wrIltSeq;
    private String wrIfmmSeq;
    private String wrIctSeq;
    private String wrWatchedLength;
    
    // lectureUpload
    private String seq;
    private String type;
    private String defaultNy;
    private String sort;
    private String path;
    private String originalName;
    private String uuidName;
    private String ext;
    private String size;
    private String pseq;
    
    //홈화면
    private Integer count;
    private Float random;
    
    // 강사 프로필
    private String teacherPath;
    private String teacherUuidName;
    
    // 강의 댓글
    private String ilrSeq;
    private String ilrIltseq;
    private String ilrRegDateTime;
    private String ilrModDateTime;
    private String ilrBody;
    private String ilrIfmmSeq;
    
    public Integer getHistoryCheck() {
        return historyCheck;
    }
    public void setHistoryCheck(Integer historyCheck) {
        this.historyCheck = historyCheck;
    }
    public String getIltSeq() {
        return iltSeq;
    }
    public void setIltSeq(String iltSeq) {
        this.iltSeq = iltSeq;
    }
    public String getIltTitle() {
        return iltTitle;
    }
    public void setIltTitle(String iltTitle) {
        this.iltTitle = iltTitle;
    }
    public String getIltBody() {
        return iltBody;
    }
    public void setIltBody(String iltBody) {
        this.iltBody = iltBody;
    }
    public String getIltPrice() {
        return iltPrice;
    }
    public void setIltPrice(String iltPrice) {
        this.iltPrice = iltPrice;
    }
    public String getIchSeq() {
        return ichSeq;
    }
    public void setIchSeq(String ichSeq) {
        this.ichSeq = ichSeq;
    }
    public String getIchIltSeq() {
        return ichIltSeq;
    }
    public void setIchIltSeq(String ichIltSeq) {
        this.ichIltSeq = ichIltSeq;
    }
    public String getIchTitle() {
        return ichTitle;
    }
    public void setIchTitle(String ichTitle) {
        this.ichTitle = ichTitle;
    }
    public String getIctSort() {
        return ictSort;
    }
    public void setIctSort(String ictSort) {
        this.ictSort = ictSort;
    }
    public String getIctSeq() {
        return ictSeq;
    }
    public void setIctSeq(String ictSeq) {
        this.ictSeq = ictSeq;
    }
    public String getIctTitle() {
        return ictTitle;
    }
    public void setIctTitle(String ictTitle) {
        this.ictTitle = ictTitle;
    }
    public String getIctIchSeq() {
        return ictIchSeq;
    }
    public void setIctIchSeq(String ictIchSeq) {
        this.ictIchSeq = ictIchSeq;
    }
    public String getIctVideoUrl() {
        return ictVideoUrl;
    }
    public void setIctVideoUrl(String ictVideoUrl) {
        this.ictVideoUrl = ictVideoUrl;
    }
    public String getIftcName() {
        return iftcName;
    }
    public void setIftcName(String iftcName) {
        this.iftcName = iftcName;
    }
    public String getIftcSeq() {
        return iftcSeq;
    }
    public void setIftcSeq(String iftcSeq) {
        this.iftcSeq = iftcSeq;
    }
    public String getIftcId() {
        return iftcId;
    }
    public void setIftcId(String iftcId) {
        this.iftcId = iftcId;
    }
    public String getIftcPassword() {
        return iftcPassword;
    }
    public void setIftcPassword(String iftcPassword) {
        this.iftcPassword = iftcPassword;
    }
    public String getIftcEmail() {
        return iftcEmail;
    }
    public void setIftcEmail(String iftcEmail) {
        this.iftcEmail = iftcEmail;
    }
    public String getIftcDomain() {
        return iftcDomain;
    }
    public void setIftcDomain(String iftcDomain) {
        this.iftcDomain = iftcDomain;
    }
    public String getIftcMobile() {
        return iftcMobile;
    }
    public void setIftcMobile(String iftcMobile) {
        this.iftcMobile = iftcMobile;
    }
    public String getIftcCarrier() {
        return iftcCarrier;
    }
    public void setIftcCarrier(String iftcCarrier) {
        this.iftcCarrier = iftcCarrier;
    }
    public String getIftcRegDateTime() {
        return iftcRegDateTime;
    }
    public void setIftcRegDateTime(String iftcRegDateTime) {
        this.iftcRegDateTime = iftcRegDateTime;
    }
    public String getIftcModDateTime() {
        return iftcModDateTime;
    }
    public void setIftcModDateTime(String iftcModDateTime) {
        this.iftcModDateTime = iftcModDateTime;
    }
    public String getIfmmSeq() {
        return ifmmSeq;
    }
    public void setIfmmSeq(String ifmmSeq) {
        this.ifmmSeq = ifmmSeq;
    }
    public String getIfmmId() {
        return ifmmId;
    }
    public void setIfmmId(String ifmmId) {
        this.ifmmId = ifmmId;
    }
    public String getIfmmName() {
        return ifmmName;
    }
    public void setIfmmName(String ifmmName) {
        this.ifmmName = ifmmName;
    }
    public String getIfmmPassword() {
        return ifmmPassword;
    }
    public void setIfmmPassword(String ifmmPassword) {
        this.ifmmPassword = ifmmPassword;
    }
    public String getIfmmEmail() {
        return ifmmEmail;
    }
    public void setIfmmEmail(String ifmmEmail) {
        this.ifmmEmail = ifmmEmail;
    }
    public String getIfmmDomain() {
        return ifmmDomain;
    }
    public void setIfmmDomain(String ifmmDomain) {
        this.ifmmDomain = ifmmDomain;
    }
    public String getIfmmMobile() {
        return ifmmMobile;
    }
    public void setIfmmMobile(String ifmmMobile) {
        this.ifmmMobile = ifmmMobile;
    }
    public String getIfmmCarrier() {
        return ifmmCarrier;
    }
    public void setIfmmCarrier(String ifmmCarrier) {
        this.ifmmCarrier = ifmmCarrier;
    }
    public String getIfmmRegDateTime() {
        return ifmmRegDateTime;
    }
    public void setIfmmRegDateTime(String ifmmRegDateTime) {
        this.ifmmRegDateTime = ifmmRegDateTime;
    }
    public String getIfmmModDateTime() {
        return ifmmModDateTime;
    }
    public void setIfmmModDateTime(String ifmmModDateTime) {
        this.ifmmModDateTime = ifmmModDateTime;
    }
    public String getIfmmType() {
        return ifmmType;
    }
    public void setIfmmType(String ifmmType) {
        this.ifmmType = ifmmType;
    }
    public String getWrSeq() {
        return wrSeq;
    }
    public void setWrSeq(String wrSeq) {
        this.wrSeq = wrSeq;
    }
    public String getWrIltSeq() {
        return wrIltSeq;
    }
    public void setWrIltSeq(String wrIltSeq) {
        this.wrIltSeq = wrIltSeq;
    }
    public String getWrIfmmSeq() {
        return wrIfmmSeq;
    }
    public void setWrIfmmSeq(String wrIfmmSeq) {
        this.wrIfmmSeq = wrIfmmSeq;
    }
    public String getWrIctSeq() {
        return wrIctSeq;
    }
    public void setWrIctSeq(String wrIctSeq) {
        this.wrIctSeq = wrIctSeq;
    }
    public String getWrWatchedLength() {
        return wrWatchedLength;
    }
    public void setWrWatchedLength(String wrWatchedLength) {
        this.wrWatchedLength = wrWatchedLength;
    }
    public String getSeq() {
        return seq;
    }
    public void setSeq(String seq) {
        this.seq = seq;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getDefaultNy() {
        return defaultNy;
    }
    public void setDefaultNy(String defaultNy) {
        this.defaultNy = defaultNy;
    }
    public String getSort() {
        return sort;
    }
    public void setSort(String sort) {
        this.sort = sort;
    }
    public String getPath() {
        return path;
    }
    public void setPath(String path) {
        this.path = path;
    }
    public String getOriginalName() {
        return originalName;
    }
    public void setOriginalName(String originalName) {
        this.originalName = originalName;
    }
    public String getUuidName() {
        return uuidName;
    }
    public void setUuidName(String uuidName) {
        this.uuidName = uuidName;
    }
    public String getExt() {
        return ext;
    }
    public void setExt(String ext) {
        this.ext = ext;
    }
    public String getSize() {
        return size;
    }
    public void setSize(String size) {
        this.size = size;
    }
    public String getPseq() {
        return pseq;
    }
    public void setPseq(String pseq) {
        this.pseq = pseq;
    }
    public Integer getCount() {
        return count;
    }
    public void setCount(Integer count) {
        this.count = count;
    }
    public Float getRandom() {
        return random;
    }
    public void setRandom(Float random) {
        this.random = random;
    }
    public String getTeacherPath() {
        return teacherPath;
    }
    public void setTeacherPath(String teacherPath) {
        this.teacherPath = teacherPath;
    }
    public String getTeacherUuidName() {
        return teacherUuidName;
    }
    public void setTeacherUuidName(String teacherUuidName) {
        this.teacherUuidName = teacherUuidName;
    }
    public String getIlrSeq() {
        return ilrSeq;
    }
    public void setIlrSeq(String ilrSeq) {
        this.ilrSeq = ilrSeq;
    }
    public String getIlrIltseq() {
        return ilrIltseq;
    }
    public void setIlrIltseq(String ilrIltseq) {
        this.ilrIltseq = ilrIltseq;
    }
    public String getIlrRegDateTime() {
        return ilrRegDateTime;
    }
    public void setIlrRegDateTime(String ilrRegDateTime) {
        this.ilrRegDateTime = ilrRegDateTime;
    }
    public String getIlrModDateTime() {
        return ilrModDateTime;
    }
    public void setIlrModDateTime(String ilrModDateTime) {
        this.ilrModDateTime = ilrModDateTime;
    }
    public String getIlrBody() {
        return ilrBody;
    }
    public void setIlrBody(String ilrBody) {
        this.ilrBody = ilrBody;
    }
    public String getIlrIfmmSeq() {
        return ilrIfmmSeq;
    }
    public void setIlrIfmmSeq(String ilrIfmmSeq) {
        this.ilrIfmmSeq = ilrIfmmSeq;
    }
    
}
