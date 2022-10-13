package kr.or.ddit.app.tour.vo;

import java.sql.Date;

public class TourVO {

	private String tourId; 		// 관광상품ID
	private String tourNm;		// 관광상품명
	private String tourSe;		// 관광상품구분
	private String tourAddr;	// 관광상품주소
	private String tourPri;		// 가격
	private String tourMaxTo;		// 최대 인원
	private Date tourRd;		// 등록수정일자
	private String tourWrt;		// 작성자
	private long atchFileId = -1;		// 첨부파일아이디
	
	public String getTourId() {
		return tourId;
	}
	public void setTourId(String tourId) {
		this.tourId = tourId;
	}
	public String getTourNm() {
		return tourNm;
	}
	public void setTourNm(String tourNm) {
		this.tourNm = tourNm;
	}
	public String getTourSe() {
		return tourSe;
	}
	public void setTourSe(String tourSe) {
		this.tourSe = tourSe;
	}
	public String getTourAddr() {
		return tourAddr;
	}
	public void setTourAddr(String tourAddr) {
		this.tourAddr = tourAddr;
	}
	public String getTourPri() {
		return tourPri;
	}
	public void setTourPri(String tourPri) {
		this.tourPri = tourPri;
	}
	public String getTourMaxTo() {
		return tourMaxTo;
	}
	public void setTourMaxTo(String tourMaxTo) {
		this.tourMaxTo = tourMaxTo;
	}
	public Date getTourRd() {
		return tourRd;
	}
	public void setTourRd(Date tourRd) {
		this.tourRd = tourRd;
	}
	public String getTourWrt() {
		return tourWrt;
	}
	public void setTourWrt(String tourWrt) {
		this.tourWrt = tourWrt;
	}
	public long getAtchFileId() {
		return atchFileId;
	}
	public void setAtchFileId(long atchFileId) {
		this.atchFileId = atchFileId;
	}
	@Override
	public String toString() {
		return "TourVO [tourId=" + tourId + ", tourNm=" + tourNm + ", tourSe=" + tourSe + ", tourAddr=" + tourAddr
				+ ", tourPri=" + tourPri + ", tourMaxTo=" + tourMaxTo + ", tourRd=" + tourRd + ", tourWrt=" + tourWrt
				+ ", atchFileId=" + atchFileId + "]";
	}
	
}
