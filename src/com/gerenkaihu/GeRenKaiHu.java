package com.gerenkaihu;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class GeRenKaiHu {
	/*
	 * 单位账号 单位名称 姓名 证件类型 证件号码 个人公积金账号 开户日期 公积金余额 个人账户状态 最后汇缴月 机构代码 柜员 备注
	 */
	String UNITACCNUM, UNITACCNAME, NAME, KIND, NUMBER, OPENDATE, BALANCE,
			PERACCSTATE, LASTPAYDATE, INSTCODE, OP, REMARK;
	/*
	 * 缴存基数 单位比例 个人比例 单位月应缴额 个人月应缴额 本年汇补缴额 年提取额 年度结息
	 */
	double BASENUMBER, UNITPROP, INDIPROP, UNITMONPAYSUM, PERMONPAYSUM,
			YPAYAMT, YDRAWAMT, YINTERESTBAL;
	int ACCNUM;
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getACCNUM() {
		return ACCNUM;
	}

	public void setACCNUM(int aCCNUM) {
		ACCNUM = aCCNUM;
	}

	@Column
	public String getUNITACCNUM() {
		return UNITACCNUM;
	}

	public void setUNITACCNUM(String uNITACCNUM) {
		UNITACCNUM = uNITACCNUM;
	}

	@Column
	public String getUNITACCNAME() {
		return UNITACCNAME;
	}

	public void setUNITACCNAME(String uNITACCNAME) {
		UNITACCNAME = uNITACCNAME;
	}

	@Column
	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	@Column
	public String getKIND() {
		return KIND;
	}

	public void setKIND(String kIND) {
		KIND = kIND;
	}

	@Column
	public String getNUMBER() {
		return NUMBER;
	}

	public void setNUMBER(String nUMBER) {
		NUMBER = nUMBER;
	}

	@Column
	public String getOPENDATE() {
		return OPENDATE;
	}

	public void setOPENDATE(String oPENDATE) {
		OPENDATE = oPENDATE;
	}

	@Column
	public String getBALANCE() {
		return BALANCE;
	}

	public void setBALANCE(String bALANCE) {
		BALANCE = bALANCE;
	}

	@Column
	public String getPERACCSTATE() {
		return PERACCSTATE;
	}

	public void setPERACCSTATE(String pERACCSTATE) {
		PERACCSTATE = pERACCSTATE;
	}

	@Column
	public String getLASTPAYDATE() {
		return LASTPAYDATE;
	}

	public void setLASTPAYDATE(String lASTPAYDATE) {
		LASTPAYDATE = lASTPAYDATE;
	}

	@Column
	public String getINSTCODE() {
		return INSTCODE;
	}

	public void setINSTCODE(String iNSTCODE) {
		INSTCODE = iNSTCODE;
	}

	@Column
	public String getOP() {
		return OP;
	}

	public void setOP(String oP) {
		OP = oP;
	}

	@Column
	public String getREMARK() {
		return REMARK;
	}

	public void setREMARK(String rEMARK) {
		REMARK = rEMARK;
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
	public double getINDIPROP() {
		return INDIPROP;
	}

	public void setINDIPROP(double iNDIPROP) {
		INDIPROP = iNDIPROP;
	}

	@Column
	public double getUNITMONPAYSUM() {
		return UNITMONPAYSUM;
	}

	public void setUNITMONPAYSUM(double uNITMONPAYSUM) {
		UNITMONPAYSUM = uNITMONPAYSUM;
	}

	@Column
	public double getPERMONPAYSUM() {
		return PERMONPAYSUM;
	}

	public void setPERMONPAYSUM(double pERMONPAYSUM) {
		PERMONPAYSUM = pERMONPAYSUM;
	}

	@Column
	public double getYPAYAMT() {
		return YPAYAMT;
	}

	public void setYPAYAMT(double yPAYAMT) {
		YPAYAMT = yPAYAMT;
	}

	@Column
	public double getYDRAWAMT() {
		return YDRAWAMT;
	}

	public void setYDRAWAMT(double yDRAWAMT) {
		YDRAWAMT = yDRAWAMT;
	}

	@Column
	public double getYINTERESTBAL() {
		return YINTERESTBAL;
	}

	public void setYINTERESTBAL(double yINTERESTBAL) {
		YINTERESTBAL = yINTERESTBAL;
	}

}
