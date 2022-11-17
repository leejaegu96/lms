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
    
    
    
    
    

	public Integer getHistoryCheck() {
		return historyCheck;
	}

	public void setHistoryCheck(Integer historyCheck) {
		this.historyCheck = historyCheck;
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

	public String getIftcSeq() {
		return iftcSeq;
	}

	public void setIftcSeq(String iftcSeq) {
		this.iftcSeq = iftcSeq;
	}

	public String getIftcName() {
		return iftcName;
	}

	public void setIftcName(String iftcName) {
		this.iftcName = iftcName;
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

    public String getIfmmName() {
        return ifmmName;
    }

    public void setIfmmName(String ifmmName) {
        this.ifmmName = ifmmName;
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

}
