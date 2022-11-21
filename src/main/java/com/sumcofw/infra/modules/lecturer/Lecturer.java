package com.sumcofw.infra.modules.lecturer;


public class Lecturer{
	private String iftcSeq;
	private String iftcId;
	private String iftcName;
	private String iftcProfile;
	
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
	
	//카테고리
	private String ictsSeq;
	private String ictsItem;
	private String ictgItem;
	private String ictgSeq;
	private String ictgIctsSeq;
	
	//챕터
	private String ictSeq;
	private String ictTitle;
	private String ictVideoUrl;
	private String ichTitle;
	private String ictSort;
	
	// 강의
	private String data;
	private String ichIltSeq;
	private String ichIltTitle;
	private String icTtitle;
	
	
	public String getIchIltSeq() {
        return ichIltSeq;
    }
    public void setIchIltSeq(String ichIltSeq) {
        this.ichIltSeq = ichIltSeq;
    }
    public String getIchIltTitle() {
        return ichIltTitle;
    }
    public void setIchIltTitle(String ichIltTitle) {
        this.ichIltTitle = ichIltTitle;
    }
    public String getIcTtitle() {
        return icTtitle;
    }
    public void setIcTtitle(String icTtitle) {
        this.icTtitle = icTtitle;
    }
    public String getData() {
        return data;
    }
    public void setData(String data) {
        this.data = data;
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
	public String getIctVideoUrl() {
		return ictVideoUrl;
	}
	public void setIctVideoUrl(String ictVideoUrl) {
		this.ictVideoUrl = ictVideoUrl;
	}
	public String getIchTitle() {
		return ichTitle;
	}
	public void setIchTitle(String ichTitle) {
		this.ichTitle = ichTitle;
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
	public String getIctgItem() {
		return ictgItem;
	}
	public void setIctgItem(String ictgItem) {
		this.ictgItem = ictgItem;
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
	public Integer getIltUseNy() {
		return iltUseNy;
	}
	public void setIltUseNy(Integer iltUseNy) {
		this.iltUseNy = iltUseNy;
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
}
