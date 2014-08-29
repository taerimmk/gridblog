package com.june.app.model;

import javax.persistence.Transient;

public class Pagination extends BaseEntity {
	@Transient
	private long pageIndex = 1;
	@Transient
	private long totalCnt = 0;
	@Transient
	private int pagePerUnit = 10;
	@Transient
	private int pageSize = 10;
	@Transient
	private long totalPageUnit;
	public long getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(long pageIndex) {
		this.pageIndex = pageIndex;
	}
	public long getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(long totalCnt) {
		this.totalCnt = totalCnt;
	}
	public int getPagePerUnit() {
		return pagePerUnit;
	}
	public void setPagePerUnit(int pagePerUnit) {
		this.pagePerUnit = pagePerUnit;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public long getTotalPageUnit() {
		if (this.totalCnt > 0){
			this.totalPageUnit = this.totalCnt / this.pageSize + (this.totalCnt % this.pageSize>0 ? 1 : 0);
		} else {
			totalPageUnit = 1;
		}
		return totalPageUnit;
	}
	public void setTotalPageUnit(long totalPageUnit) {
		this.totalPageUnit = totalPageUnit;
	}
	@Override
	public String toString() {
		return "Pagination [pageIndex=" + pageIndex + ", totalCnt=" + totalCnt
				+ ", pagePerUnit=" + pagePerUnit + ", pageSize=" + pageSize
				+ ", totalPageUnit=" + totalPageUnit + "]";
	}
	
	
	
	
	

}