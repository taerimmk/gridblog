package com.june.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "BBS")
public class Board extends Pagination {

	@Column(name = "BBS_ID")
	private Integer bbsId;

	@Column(name = "NTT_NO")
	private Integer nttNo;

	@Column(name = "NTT_SJ")
	@NotEmpty
	private String nttSj;

	@Column(name = "NTT_CN")
	@NotEmpty
	private String nttCn;
	
	@Column(name = "NTT_LK")
	private String nttLk;
	
	@Column(name = "NTT_TY")
	@NotEmpty
	private String nttTy;
	
	@Column(name = "ANSWER_AT")
	private String answerAt;

	@Column(name = "PARNTSCTT_NO")
	private Integer parntscttNo;

	@Column(name = "ANSWER_LC")
	private Integer answerLc;

	@Column(name = "SORT_ORDR")
	private Integer sortOrdr;

	@Column(name = "RDCNT")
	private Integer rdcnt;

	@Column(name = "USE_AT")
	private String useAt;

	@Column(name = "NTCR_ID")
	private String ntcrId;

	@Column(name = "NTCR_NM")
	private String ntcrNm;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "ATCH_FILE_ID")
	private Integer atchFileId;

	@Column(name = "REGI_DATE", updatable=false)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private DateTime regiDate = new DateTime();

	@Column(name = "REGI_ID")
	private Integer regiId;

	@Column(name = "UPDT_DATE")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private DateTime updtDate = new DateTime();

	@Column(name = "UPDT_ID")
	private Integer updtId;
	
	@ManyToOne
    @JoinColumn(name = "REGI_ID", insertable=false,updatable=false)
    private UserInfo userInfoReg;

	@ManyToOne
	@NotFound(action=NotFoundAction.IGNORE)
    @JoinColumn(name = "UPDT_ID", insertable=false,updatable=false)
    private UserInfo userInfoUpt;

	public Integer getBbsId() {
		return bbsId;
	}

	public void setBbsId(Integer bbsId) {
		this.bbsId = bbsId;
	}

	public Integer getNttNo() {
		return nttNo;
	}

	public void setNttNo(Integer nttNo) {
		this.nttNo = nttNo;
	}

	public String getNttSj() {
		return nttSj;
	}

	public void setNttSj(String nttSj) {
		this.nttSj = nttSj;
	}

	public String getNttCn() {
		return nttCn;
	}

	public void setNttCn(String nttCn) {
		this.nttCn = nttCn;
	}

	public String getNttLk() {
		return nttLk;
	}

	public void setNttLk(String nttLk) {
		this.nttLk = nttLk;
	}

	public String getAnswerAt() {
		return answerAt;
	}

	public void setAnswerAt(String answerAt) {
		this.answerAt = answerAt;
	}

	public Integer getParntscttNo() {
		return parntscttNo;
	}

	public void setParntscttNo(Integer parntscttNo) {
		this.parntscttNo = parntscttNo;
	}

	public Integer getAnswerLc() {
		return answerLc;
	}

	public void setAnswerLc(Integer answerLc) {
		this.answerLc = answerLc;
	}

	public Integer getSortOrdr() {
		return sortOrdr;
	}

	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}

	public Integer getRdcnt() {
		return rdcnt;
	}

	public void setRdcnt(Integer rdcnt) {
		this.rdcnt = rdcnt;
	}

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}

	public String getNtcrId() {
		return ntcrId;
	}

	public void setNtcrId(String ntcrId) {
		this.ntcrId = ntcrId;
	}

	public String getNtcrNm() {
		return ntcrNm;
	}

	public void setNtcrNm(String ntcrNm) {
		this.ntcrNm = ntcrNm;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getAtchFileId() {
		return atchFileId;
	}

	public void setAtchFileId(Integer atchFileId) {
		this.atchFileId = atchFileId;
	}

	public DateTime getRegiDate() {
		return regiDate;
	}

	public void setRegiDate(DateTime regiDate) {
		this.regiDate = regiDate;
	}

	public Integer getRegiId() {
		return regiId;
	}

	public void setRegiId(Integer regiId) {
		this.regiId = regiId;
	}

	public DateTime getUpdtDate() {
		return updtDate;
	}

	public void setUpdtDate(DateTime updtDate) {
		this.updtDate = updtDate;
	}

	public Integer getUpdtId() {
		return updtId;
	}

	public void setUpdtId(Integer updtId) {
		this.updtId = updtId;
	}
	@JsonIgnore
	public UserInfo getUserInfoReg() {
		return userInfoReg;
	}

	public void setUserInfoReg(UserInfo userInfoReg) {
		this.userInfoReg = userInfoReg;
	}
	@JsonIgnore
	public UserInfo getUserInfoUpt() {
		return userInfoUpt;
	}

	public void setUserInfoUpt(UserInfo userInfoUpt) {
		this.userInfoUpt = userInfoUpt;
	}

	public String getNttTy() {
		return nttTy;
	}

	public void setNttTy(String nttTy) {
		this.nttTy = nttTy;
	}

	@Override
	public String toString() {
		return "Board [bbsId=" + bbsId + ", nttNo=" + nttNo + ", nttSj="
				+ nttSj + ", nttCn=" + nttCn + ", nttLk=" + nttLk + ", nttTy="
				+ nttTy + ", answerAt=" + answerAt + ", parntscttNo="
				+ parntscttNo + ", answerLc=" + answerLc + ", sortOrdr="
				+ sortOrdr + ", rdcnt=" + rdcnt + ", useAt=" + useAt
				+ ", ntcrId=" + ntcrId + ", ntcrNm=" + ntcrNm + ", password="
				+ password + ", atchFileId=" + atchFileId + ", regiDate="
				+ regiDate + ", regiId=" + regiId + ", updtDate=" + updtDate
				+ ", updtId=" + updtId + "]";
	}
	
	

	
	
}
