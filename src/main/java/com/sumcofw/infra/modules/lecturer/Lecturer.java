package com.sumcofw.infra.modules.lecturer;

import org.springframework.web.multipart.MultipartFile;

import com.sumcofw.infra.common.base.Base;

public class Lecturer extends Base {
    /*
     * 강사 테이블
     * infrTeacher
     */
    private String iftcSeq;
    private String iftcId;
    private String iftcName;
    private String iftcMobile;
    private String iftcProfile;
    /*
     * 강사 sns 테이블
     * infrTeacherSns
     */
    private String iftsIftcSeq;
    private String iftsUrl;
    private String iftsType;

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
    private String tableName;
    private String seq;
    private String path;
    private Integer type;
    private Integer defaultNy;
    private Integer sort;
    private String originalName;
    private String uuidName;
    private String ext;
    private long size;
    private Integer delNy;
    private String pseq;
    private MultipartFile[] uploadedImage;
    
    /**
     * 강사 프로필 업로드
     * lectureUpload
     */
    private MultipartFile[] uploadedProfileImage;
    private String file;
    
    
    
    
    
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public MultipartFile[] getUploadedProfileImage() {
		return uploadedProfileImage;
	}
	public void setUploadedProfileImage(MultipartFile[] uploadedProfileImage) {
		this.uploadedProfileImage = uploadedProfileImage;
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
    public String getIftcName() {
        return iftcName;
    }
    public void setIftcName(String iftcName) {
        this.iftcName = iftcName;
    }
    public String getIftcMobile() {
        return iftcMobile;
    }
    public void setIftcMobile(String iftcMobile) {
        this.iftcMobile = iftcMobile;
    }
    public String getIftcProfile() {
        return iftcProfile;
    }
    public void setIftcProfile(String iftcProfile) {
        this.iftcProfile = iftcProfile;
    }
    public String getIftsIftcSeq() {
        return iftsIftcSeq;
    }
    public void setIftsIftcSeq(String iftsIftcSeq) {
        this.iftsIftcSeq = iftsIftcSeq;
    }
    public String getIftsUrl() {
        return iftsUrl;
    }
    public void setIftsUrl(String iftsUrl) {
        this.iftsUrl = iftsUrl;
    }
    public String getIftsType() {
        return iftsType;
    }
    public void setIftsType(String iftsType) {
        this.iftsType = iftsType;
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
    public String getTableName() {
        return tableName;
    }
    public void setTableName(String tableName) {
        this.tableName = tableName;
    }
    public String getSeq() {
        return seq;
    }
    public void setSeq(String seq) {
        this.seq = seq;
    }
    public String getPath() {
        return path;
    }
    public void setPath(String path) {
        this.path = path;
    }
    public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getDefaultNy() {
        return defaultNy;
    }
    public void setDefaultNy(Integer defaultNy) {
        this.defaultNy = defaultNy;
    }
    public Integer getSort() {
        return sort;
    }
    public void setSort(Integer sort) {
        this.sort = sort;
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
    public long getSize() {
        return size;
    }
    public void setSize(long size) {
        this.size = size;
    }
    public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
        return pseq;
    }
    public void setPseq(String pseq) {
        this.pseq = pseq;
    }
    public MultipartFile[] getUploadedImage() {
        return uploadedImage;
    }
    public void setUploadedImage(MultipartFile[] uploadedImage) {
        this.uploadedImage = uploadedImage;
    }
    
}
