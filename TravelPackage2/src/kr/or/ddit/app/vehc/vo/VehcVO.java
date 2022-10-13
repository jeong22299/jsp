package kr.or.ddit.app.vehc.vo;

import java.util.Date;

public class VehcVO {
	private String vehcId;		// 교통수단ID
	private String vehcComp;	// 교통수단 회사명
	private String vehcSe;		// 구분
	private String vehcNm;		// 교통수단명
	private String vehcDp;		// 단위거리 가격
	private Date vehcRd;		// 등록수정일자
	private String vehcWrt;		// 작성자

	public String getVehcId() {
		return vehcId;
	}
	
	public void setVehcId(String vehcId) {
		this.vehcId = vehcId;
	}
	public String getVehcComp() {
		return vehcComp;
	}
	public void setVehcComp(String vehcComp) {
		this.vehcComp = vehcComp;
	}
	public String getVehcSe() {
		return vehcSe;
	}
	public void setVehcSe(String vehcSe) {
		this.vehcSe = vehcSe;
	}
	public String getVehcNm() {
		return vehcNm;
	}
	public void setVehcNm(String vehcNm) {
		this.vehcNm = vehcNm;
	}
	public String getVehcdp() {
		return vehcDp;
	}
	public void setVehcdp(String vehcdp) {
		this.vehcDp = vehcdp;
	}
	public Date getVehcRd() {
		return vehcRd;
	}
	public void setVehcRd(Date vehcRd) {
		this.vehcRd = vehcRd;
	}
	public String getVehcWrt() {
		return vehcWrt;
	}
	public void setVehcWrt(String vehcWrt) {
		this.vehcWrt = vehcWrt;
	}

	@Override
	public String toString() {
		return "VehcVO [vehcId=" + vehcId + ", vehcComp=" + vehcComp + ", vehcSe=" + vehcSe + ", vehcNm=" + vehcNm
				+ ", vehcdp=" + vehcDp + ", vehcDate=" + vehcRd + ", vehcWrt=" + vehcWrt + "]";
	}
			
}
