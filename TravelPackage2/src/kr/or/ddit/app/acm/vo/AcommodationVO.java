package kr.or.ddit.app.acm.vo;

import java.util.Date;

public class AcommodationVO {

	private String acmId;
	private String acmNm;
	private String acmSe;
	private String Addr;
	private String Price;
	private String Qty;
	private Date acmRd;
	private String Writer;
	private long atchFileId = -1;
	
	public String getAcmId() {
		return acmId;
	}
	public void setAcmId(String acmId) {
		this.acmId = acmId;
	}
	public String getAcmNm() {
		return acmNm;
	}
	public void setAcmNm(String acmNm) {
		this.acmNm = acmNm;
	}
	public String getAcmSe() {
		return acmSe;
	}
	public void setAcmSe(String acmSe) {
		this.acmSe = acmSe;
	}
	public String getAddr() {
		return Addr;
	}
	public void setAddr(String addr) {
		Addr = addr;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		this.Price = price;
	}
	public String getQty() {
		return Qty;
	}
	public void setQty(String qty) {
		Qty = qty;
	}
	public Date getAcmRd() {
		return acmRd;
	}
	public void setAcmRd(Date acmRd) {
		this.acmRd = acmRd;
	}
	public String getWriter() {
		return Writer;
	}
	public void setWriter(String writer) {
		this.Writer = writer;
	}
	public long getAtchFileId() {
		return atchFileId;
	}
	public void setAtchFileId(long atchFileId) {
		this.atchFileId = atchFileId;
	}
}
