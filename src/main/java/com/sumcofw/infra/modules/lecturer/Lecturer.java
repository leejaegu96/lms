package com.sumcofw.infra.modules.lecturer;

import org.springframework.web.multipart.MultipartFile;

public class Lecturer{
    /*
     * 강사 테이블
     * infrTeacher
     */
	private String iftcSeq;
	private String iftcId;
	private String iftcName;
	private String iftcProfile;
	
	/**
	 * 강의 테이블
	 * idLecture
	 */
	private String iltSeq;
	private String iltIctgSeq;
	private String iltIftcSeq;
	private String iltIfmmSeq;
	private String iltTitle;
	private String iltTitleSub;
	private String iltBody;
	private String iltRegDateTime;
	private String iltModDateTime;
	private String iltTotalTime;
	private String iltVideoCount;
	private String iltPurchasesCount;
	private String iltViewCount;
	private Integer iltPrice;
	private Integer iltUseNy;
	
	/**
	 * 대분류 카테고리 테이블
	 * idCategory
	 */
	private String ictgItem;
	private String ictgSeq;
	private String ictgIctsSeq;

	/**
	 * 소분류 카테고리 테이블
	 * idCategory
	 */
	private String ictsSeq;
	private String ictsItem;
	
	
	/**
	 * 챕터 제목 테이블
	 * idChapterHeader
	 */
	private String ichSeq;
	private String ichIltSeq;
	private String ichTitle;
	
	/**
	 * 챕터 테이블
	 * idChapter
	 */
	private String ictSeq;
	private String ictIchSeq;
	private String ictTitle;
	private String ictVideoLength;
	private String ictVideoUrl;
	
	private String data;
	
	private String mainKey;
	
	/**
	 * 강의 업로드 테이블
	 * lectureUpload
	 */
	private String luSeq;
	private String luPath;
	private String type;
	private Integer luDefaultNy;
	private Integer luSort;
	private String luOriginalname;
	private String luUuidName;
	private String luExt;
	private long luSize;
	private String luDelNy;
	private String luPseq;
	private String luRegDateTime;
	private String luModDatetime;
	private MultipartFile[] uploadedImage;
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
    public String getIftcName() {
        return iftcName;
    }
    public void setIftcName(String iftcName) {
        this.iftcName = iftcName;
    }
    public String getIftcProfile() {
        return iftcProfile;
    }
    public void setIftcProfile(String iftcProfile) {
        this.iftcProfile = iftcProfile;
    }
    public String getIltSeq() {
        return iltSeq;
    }
    public void setIltSeq(String iltSeq) {
        this.iltSeq = iltSeq;
    }
    public String getIltIctgSeq() {
        return iltIctgSeq;
    }
    public void setIltIctgSeq(String iltIctgSeq) {
        this.iltIctgSeq = iltIctgSeq;
    }
    public String getIltIftcSeq() {
        return iltIftcSeq;
    }
    public void setIltIftcSeq(String iltIftcSeq) {
        this.iltIftcSeq = iltIftcSeq;
    }
    public String getIltIfmmSeq() {
        return iltIfmmSeq;
    }
    public void setIltIfmmSeq(String iltIfmmSeq) {
        this.iltIfmmSeq = iltIfmmSeq;
    }
    public String getIltTitle() {
        return iltTitle;
    }
    public void setIltTitle(String iltTitle) {
        this.iltTitle = iltTitle;
    }
    public String getIltTitleSub() {
        return iltTitleSub;
    }
    public void setIltTitleSub(String iltTitleSub) {
        this.iltTitleSub = iltTitleSub;
    }
    public String getIltBody() {
        return iltBody;
    }
    public void setIltBody(String iltBody) {
        this.iltBody = iltBody;
    }
    public String getIltRegDateTime() {
        return iltRegDateTime;
    }
    public void setIltRegDateTime(String iltRegDateTime) {
        this.iltRegDateTime = iltRegDateTime;
    }
    public String getIltModDateTime() {
        return iltModDateTime;
    }
    public void setIltModDateTime(String iltModDateTime) {
        this.iltModDateTime = iltModDateTime;
    }
    public String getIltTotalTime() {
        return iltTotalTime;
    }
    public void setIltTotalTime(String iltTotalTime) {
        this.iltTotalTime = iltTotalTime;
    }
    public String getIltVideoCount() {
        return iltVideoCount;
    }
    public void setIltVideoCount(String iltVideoCount) {
        this.iltVideoCount = iltVideoCount;
    }
    public String getIltPurchasesCount() {
        return iltPurchasesCount;
    }
    public void setIltPurchasesCount(String iltPurchasesCount) {
        this.iltPurchasesCount = iltPurchasesCount;
    }
    public String getIltViewCount() {
        return iltViewCount;
    }
    public void setIltViewCount(String iltViewCount) {
        this.iltViewCount = iltViewCount;
    }
    public Integer getIltPrice() {
        return iltPrice;
    }
    public void setIltPrice(Integer iltPrice) {
        this.iltPrice = iltPrice;
    }
    public Integer getIltUseNy() {
        return iltUseNy;
    }
    public void setIltUseNy(Integer iltUseNy) {
        this.iltUseNy = iltUseNy;
    }
    public String getIctgItem() {
        return ictgItem;
    }
    public void setIctgItem(String ictgItem) {
        this.ictgItem = ictgItem;
    }
    public String getIctgSeq() {
        return ictgSeq;
    }
    public void setIctgSeq(String ictgSeq) {
        this.ictgSeq = ictgSeq;
    }
    public String getIctgIctsSeq() {
        return ictgIctsSeq;
    }
    public void setIctgIctsSeq(String ictgIctsSeq) {
        this.ictgIctsSeq = ictgIctsSeq;
    }
    public String getIctsSeq() {
        return ictsSeq;
    }
    public void setIctsSeq(String ictsSeq) {
        this.ictsSeq = ictsSeq;
    }
    public String getIctsItem() {
        return ictsItem;
    }
    public void setIctsItem(String ictsItem) {
        this.ictsItem = ictsItem;
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
    public String getIctSeq() {
        return ictSeq;
    }
    public void setIctSeq(String ictSeq) {
        this.ictSeq = ictSeq;
    }
    public String getIctIchSeq() {
        return ictIchSeq;
    }
    public void setIctIchSeq(String ictIchSeq) {
        this.ictIchSeq = ictIchSeq;
    }
    public String getIctTitle() {
        return ictTitle;
    }
    public void setIctTitle(String ictTitle) {
        this.ictTitle = ictTitle;
    }
    public String getIctVideoLength() {
        return ictVideoLength;
    }
    public void setIctVideoLength(String ictVideoLength) {
        this.ictVideoLength = ictVideoLength;
    }
    public String getIctVideoUrl() {
        return ictVideoUrl;
    }
    public void setIctVideoUrl(String ictVideoUrl) {
        this.ictVideoUrl = ictVideoUrl;
    }
    public String getData() {
        return data;
    }
    public void setData(String data) {
        this.data = data;
    }
    public String getMainKey() {
        return mainKey;
    }
    public void setMainKey(String mainKey) {
        this.mainKey = mainKey;
    }
    public String getLuSeq() {
        return luSeq;
    }
    public void setLuSeq(String luSeq) {
        this.luSeq = luSeq;
    }
    public String getLuPath() {
        return luPath;
    }
    public void setLuPath(String luPath) {
        this.luPath = luPath;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public Integer getLuDefaultNy() {
        return luDefaultNy;
    }
    public void setLuDefaultNy(Integer luDefaultNy) {
        this.luDefaultNy = luDefaultNy;
    }
    public Integer getLuSort() {
        return luSort;
    }
    public void setLuSort(Integer luSort) {
        this.luSort = luSort;
    }
    public String getLuOriginalname() {
        return luOriginalname;
    }
    public void setLuOriginalname(String luOriginalname) {
        this.luOriginalname = luOriginalname;
    }
    public String getLuUuidName() {
        return luUuidName;
    }
    public void setLuUuidName(String luUuidName) {
        this.luUuidName = luUuidName;
    }
    public String getLuExt() {
        return luExt;
    }
    public void setLuExt(String luExt) {
        this.luExt = luExt;
    }
    public long getLuSize() {
        return luSize;
    }
    public void setLuSize(long luSize) {
        this.luSize = luSize;
    }
    public String getLuDelNy() {
        return luDelNy;
    }
    public void setLuDelNy(String luDelNy) {
        this.luDelNy = luDelNy;
    }
    public String getLuPseq() {
        return luPseq;
    }
    public void setLuPseq(String luPseq) {
        this.luPseq = luPseq;
    }
    public String getLuRegDateTime() {
        return luRegDateTime;
    }
    public void setLuRegDateTime(String luRegDateTime) {
        this.luRegDateTime = luRegDateTime;
    }
    public String getLuModDatetime() {
        return luModDatetime;
    }
    public void setLuModDatetime(String luModDatetime) {
        this.luModDatetime = luModDatetime;
    }
    public MultipartFile[] getUploadedImage() {
        return uploadedImage;
    }
    public void setUploadedImage(MultipartFile[] uploadedImage) {
        this.uploadedImage = uploadedImage;
    }
    
	
}
