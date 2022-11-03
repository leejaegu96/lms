package com.sumcofw.infra.modules.member;

public class Member {
	
	//idOrder
	
	private String iodSeq;
	private String iodIfmmSeq;
	private String iodTotalPrice;	
	private String iodPayDateTime;
	private String iodPayMethod;
	
	// infrMember
	
	private String ifmmSeq;

	public String getIodSeq() {
		return iodSeq;
	}

	public void setIodSeq(String iodSeq) {
		this.iodSeq = iodSeq;
	}

	public String getIodIfmmSeq() {
		return iodIfmmSeq;
	}

	public void setIodIfmmSeq(String iodIfmmSeq) {
		this.iodIfmmSeq = iodIfmmSeq;
	}

	public String getIodTotalPrice() {
		return iodTotalPrice;
	}

	public void setIodTotalPrice(String iodTotalPrice) {
		this.iodTotalPrice = iodTotalPrice;
	}

	public String getIodPayDateTime() {
		return iodPayDateTime;
	}

	public void setIodPayDateTime(String iodPayDateTime) {
		this.iodPayDateTime = iodPayDateTime;
	}

	public String getIodPayMethod() {
		return iodPayMethod;
	}

	public void setIodPayMethod(String iodPayMethod) {
		this.iodPayMethod = iodPayMethod;
	}

	public String getIfmmSeq() {
		return ifmmSeq;
	}

	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	
	
}
