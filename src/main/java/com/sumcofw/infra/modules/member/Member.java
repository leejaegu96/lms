package com.sumcofw.infra.modules.member;

import java.util.Date;

public class Member {
	
	//idOrder
	
	private String iodSeq;
	private String iodIfmmSeq;
	private String iodTotalPrice;	
	private Date iodPayDateTime;
	private String iodPayMethod;
	private String iodNumber;
	
	// infrMember
	
	private String ifmmSeq;

	// idPayment
	
	private String ipmSeq;
	private String ipmIodSeq;
	private String ipmIltSeq;
	
	// idLecture
	
	private String iltSeq;
	private String iltTitle;
	
	
	
	
	public String getIltTitle() {
		return iltTitle;
	}

	public void setIltTitle(String iltTitle) {
		this.iltTitle = iltTitle;
	}

	public String getIltSeq() {
		return iltSeq;
	}

	public void setIltSeq(String iltSeq) {
		this.iltSeq = iltSeq;
	}

	public String getIpmSeq() {
		return ipmSeq;
	}

	public void setIpmSeq(String ipmSeq) {
		this.ipmSeq = ipmSeq;
	}

	public String getIpmIodSeq() {
		return ipmIodSeq;
	}

	public void setIpmIodSeq(String ipmIodSeq) {
		this.ipmIodSeq = ipmIodSeq;
	}

	public String getIpmIltSeq() {
		return ipmIltSeq;
	}

	public void setIpmIltSeq(String ipmIltSeq) {
		this.ipmIltSeq = ipmIltSeq;
	}

	public String getIodNumber() {
		return iodNumber;
	}

	public void setIodNumber(String iodNumber) {
		this.iodNumber = iodNumber;
	}

	public Date getIodPayDateTime() {
		return iodPayDateTime;
	}

	public void setIodPayDateTime(Date iodPayDateTime) {
		this.iodPayDateTime = iodPayDateTime;
	}

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
