package com.june.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "USER_ROLE")
public class UserRoleInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private Integer id;

	@Column(name = "REGI_DATE", updatable = false)
	private Date regiDate;
	
	@ManyToOne
    @JoinColumn(name = "ROLE")
    private RoleInfo roleInfo;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "USER")
    private UserInfo userInfo;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public Date getRegiDate() {
		return regiDate;
	}

	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}

	public RoleInfo getRoleInfo() {
		return roleInfo;
	}

	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}

	@Override
	public String toString() {
		return "UserRoleInfo [id=" + id + ", regiDate=" + regiDate
				+ ", roleInfo=" + roleInfo + "]";
	}

	
}
