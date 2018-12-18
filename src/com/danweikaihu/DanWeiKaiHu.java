package com.danweikaihu;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;

@Entity
@Table
public class DanWeiKaiHu{
	/*
	 *  单位名称 单位地址 组织机构代码 企业类型 发薪日期 联系电话 单位联系人 经办人身份证号码 机构代码 柜员 备注
	 */
	String UNITACCNAME, UNITADDR, ORGCODE, UNITKIND, SALARYDATE, UNITPHONE,
			UNITLINKMAN, UNITAGENTPAPNO, INSTCODE, OP, REMARK;
	// 单位类别 账户状态FF
	char UNITCHAR, ACCSTATE;
	/*
	 * 公积金余额 缴存基数 单位比例 个人比例 单位月应缴额 个人月应缴额
	 */
	double BALANCE, BASENUMBER, UNITPROP, PERPROP, UNITPAYSUM, PERPAYSUM;
	// 单位人数  单位公积金账号
	int PERSNUM, UNITACCNUM;

	@Id
	@Column(length=12)
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getUNITACCNUM() {
		return UNITACCNUM;
	}

	public void setUNITACCNUM(int uNITACCNUM) {
		UNITACCNUM = uNITACCNUM;
	}

	@Column(length=100)
	public String getUNITACCNAME() {
		return UNITACCNAME;
	}

	public void setUNITACCNAME(String uNITACCNAME) {
		UNITACCNAME = uNITACCNAME;
	}

	@Column(length=60)
	public String getUNITADDR() {
		return UNITADDR;
	}

	public void setUNITADDR(String uNITADDR) {
		UNITADDR = uNITADDR;
	}

	@Column(length=8)
	public String getORGCODE() {
		return ORGCODE;
	}

	public void setORGCODE(String oRGCODE) {
		ORGCODE = oRGCODE;
	}

	@Column(length=3)
	public String getUNITKIND() {
		return UNITKIND;
	}

	public void setUNITKIND(String uNITKIND) {
		UNITKIND = uNITKIND;
	}

	@Column(length=2)
	public String getSALARYDATE() {
		return SALARYDATE;
	}

	public void setSALARYDATE(String sALARYDATE) {
		SALARYDATE = sALARYDATE;
	}

	@Column(length=20)
	public String getUNITPHONE() {
		return UNITPHONE;
	}

	public void setUNITPHONE(String uNITPHONE) {
		UNITPHONE = uNITPHONE;
	}

	@Column(length=24)
	public String getUNITLINKMAN() {
		return UNITLINKMAN;
	}

	public void setUNITLINKMAN(String uNITLINKMAN) {
		UNITLINKMAN = uNITLINKMAN;
	}

	@Column(length=20)
	public String getUNITAGENTPAPNO() {
		return UNITAGENTPAPNO;
	}

	public void setUNITAGENTPAPNO(String uNITAGENTPAPNO) {
		UNITAGENTPAPNO = uNITAGENTPAPNO;
	}

	@Column(length=8)
	public String getINSTCODE() {
		return INSTCODE;
	}

	public void setINSTCODE(String iNSTCODE) {
		INSTCODE = iNSTCODE;
	}

	@Column(length=4)
	public String getOP() {
		return OP;
	}

	public void setOP(String oP) {
		OP = oP;
	}

	@Column(length=64)
	public String getREMARK() {
		return REMARK;
	}

	public void setREMARK(String rEMARK) {
		REMARK = rEMARK;
	}

	@Column(length=1)
	public char getUNITCHAR() {
		return UNITCHAR;
	}

	public void setUNITCHAR(char uNITCHAR) {
		UNITCHAR = uNITCHAR;
	}

	@Column(length=1)
	public char getACCSTATE() {
		return ACCSTATE;
	}

	public void setACCSTATE(char aCCSTATE) {
		ACCSTATE = aCCSTATE;
	}

	@Column
	public double getBALANCE() {
		return BALANCE;
	}

	public void setBALANCE(double bALANCE) {
		BALANCE = bALANCE;
	}

	@Column
	public double getBASENUMBER() {
		return BASENUMBER;
	}

	public void setBASENUMBER(double bASENUMBER) {
		BASENUMBER = bASENUMBER;
	}

	@Column
	public double getUNITPROP() {
		return UNITPROP;
	}

	public void setUNITPROP(double uNITPROP) {
		UNITPROP = uNITPROP;
	}

	@Column
	public double getPERPROP() {
		return PERPROP;
	}

	public void setPERPROP(double pERPROP) {
		PERPROP = pERPROP;
	}

	@Column
	public double getUNITPAYSUM() {
		return UNITPAYSUM;
	}

	public void setUNITPAYSUM(double uNITPAYSUM) {
		UNITPAYSUM = uNITPAYSUM;
	}

	@Column
	public double getPERPAYSUM() {
		return PERPAYSUM;
	}

	public void setPERPAYSUM(double pERPAYSUM) {
		PERPAYSUM = pERPAYSUM;
	}

	@Column
	public int getPERSNUM() {
		return PERSNUM;
	}

	public void setPERSNUM(int pERSNUM) {
		PERSNUM = pERSNUM;
	}

}
