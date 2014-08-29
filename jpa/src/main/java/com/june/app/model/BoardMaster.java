package com.june.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BBSMST")
public class BoardMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private Integer id;

	@Column(name = "BBS_NM")
	private String bbsNm;
	
	@Column(name = "BBS_INTRCN")
	private String bbsIntrcn;
	
	@Column(name = "BBS_TY_CODE")
	private String bbsTyCode;
	
	@Column(name = "BBS_ATTRB_CODE")
	private String bbsAttrbCode;
	
	@Column(name = "REPLY_POSBL_AT")
	private String replyPosblAt;
	
	@Column(name = "FILE_ATCH_POSBL_AT")
	private String fileAtchPosblAt;
	
	@Column(name = "ATCH_POSBL_FILE_NUMBER")
	private Integer atchPosblFileNumber;
	
	@Column(name = "ATCH_POSBL_FILE_SIZE")
	private Integer atchPosblFileSize;
	
	@Column(name = "USE_AT")
	private String useAt;
	
	@Column(name = "TMPLAT_ID")
	private String tmplatId;
	
	@Column(name = "REGI_DATE")
	private String regiDate;
	
	@Column(name = "REGI_ID")
	private Integer regiId;
	
	@Column(name = "UPDT_DATE")
	private String updtDate;
	
	@Column(name = "UPDT_ID")
	private Integer updtId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBbsNm() {
		return bbsNm;
	}

	public void setBbsNm(String bbsNm) {
		this.bbsNm = bbsNm;
	}

	public String getBbsIntrcn() {
		return bbsIntrcn;
	}

	public void setBbsIntrcn(String bbsIntrcn) {
		this.bbsIntrcn = bbsIntrcn;
	}

	public String getBbsTyCode() {
		return bbsTyCode;
	}

	public void setBbsTyCode(String bbsTyCode) {
		this.bbsTyCode = bbsTyCode;
	}

	public String getBbsAttrbCode() {
		return bbsAttrbCode;
	}

	public void setBbsAttrbCode(String bbsAttrbCode) {
		this.bbsAttrbCode = bbsAttrbCode;
	}

	public String getReplyPosblAt() {
		return replyPosblAt;
	}

	public void setReplyPosblAt(String replyPosblAt) {
		this.replyPosblAt = replyPosblAt;
	}

	public String getFileAtchPosblAt() {
		return fileAtchPosblAt;
	}

	public void setFileAtchPosblAt(String fileAtchPosblAt) {
		this.fileAtchPosblAt = fileAtchPosblAt;
	}

	public Integer getAtchPosblFileNumber() {
		return atchPosblFileNumber;
	}

	public void setAtchPosblFileNumber(Integer atchPosblFileNumber) {
		this.atchPosblFileNumber = atchPosblFileNumber;
	}

	public Integer getAtchPosblFileSize() {
		return atchPosblFileSize;
	}

	public void setAtchPosblFileSize(Integer atchPosblFileSize) {
		this.atchPosblFileSize = atchPosblFileSize;
	}

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}

	public String getTmplatId() {
		return tmplatId;
	}

	public void setTmplatId(String tmplatId) {
		this.tmplatId = tmplatId;
	}

	public String getRegiDate() {
		return regiDate;
	}

	public void setRegiDate(String regiDate) {
		this.regiDate = regiDate;
	}

	public Integer getRegiId() {
		return regiId;
	}

	public void setRegiId(Integer regiId) {
		this.regiId = regiId;
	}

	public String getUpdtDate() {
		return updtDate;
	}

	public void setUpdtDate(String updtDate) {
		this.updtDate = updtDate;
	}

	public Integer getUpdtId() {
		return updtId;
	}

	public void setUpdtId(Integer updtId) {
		this.updtId = updtId;
	}

	@Override
	public String toString() {
		return "BoardMaster [id=" + id + ", bbsNm=" + bbsNm + ", bbsIntrcn="
				+ bbsIntrcn + ", bbsTyCode=" + bbsTyCode + ", bbsAttrbCode="
				+ bbsAttrbCode + ", replyPosblAt=" + replyPosblAt
				+ ", fileAtchPosblAt=" + fileAtchPosblAt
				+ ", atchPosblFileNumber=" + atchPosblFileNumber
				+ ", atchPosblFileSize=" + atchPosblFileSize + ", useAt="
				+ useAt + ", tmplatId=" + tmplatId + ", regiDate=" + regiDate
				+ ", regiId=" + regiId + ", updtDate=" + updtDate + ", updtId="
				+ updtId + "]";
	}

	

}
