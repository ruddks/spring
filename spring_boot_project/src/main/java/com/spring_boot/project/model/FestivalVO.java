package com.spring_boot.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FestivalVO {
	private String fesNo;
	private String fesName;
	private String fesDescript ;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fesFirst;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fesLast;
    public String getFesNo() {
		return fesNo;
	}
	public void setFesNo(String fesNo) {
		this.fesNo = fesNo;
	}
	public String getFesName() {
		return fesName;
	}
	public void setFesName(String fesName) {
		this.fesName = fesName;
	}
	public String getFesDescript() {
		return fesDescript;
	}
	public void setFesDescript(String fesDescript) {
		this.fesDescript = fesDescript;
	}
	public Date getFesFirst() {
		return fesFirst;
	}
	public void setFesFirst(Date fesFirst) {
		this.fesFirst = fesFirst;
	}
	public Date getFesLast() {
		return fesLast;
	}
	public void setFesLast(Date fesLast) {
		this.fesLast = fesLast;
	}
	public String getRegionNo() {
		return regionNo;
	}
	public void setRegionNo(String regionNo) {
		this.regionNo = regionNo;
	}
	private String regionNo;
}
