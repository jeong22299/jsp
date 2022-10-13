package kr.or.ddit.app.notice.vo;

import java.sql.Date;

public class NoticeVO {
	private String noticeId;		// 게시물ID
	private Date noticeRd;			// 수정일자
	private String noticeTitle;		// 제목
	private String noticeCont;		// 내용
	private String noticeSe;		// 구분
	private String noticeWrt;		// 작성자
	
	public String getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(String noticeId) {
		this.noticeId = noticeId;
	}
	public Date getNoticeRd() {
		return noticeRd;
	}
	public void setNoticeRd(Date noticeRd) {
		this.noticeRd = noticeRd;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeCont() {
		return noticeCont;
	}
	public void setNoticeCont(String noticeCont) {
		this.noticeCont = noticeCont;
	}
	public String getNoticeSe() {
		return noticeSe;
	}
	public void setNoticeSe(String noticeSe) {
		this.noticeSe = noticeSe;
	}
	public String getNoticeWrt() {
		return noticeWrt;
	}
	public void setNoticeWrt(String noticeWrt) {
		this.noticeWrt = noticeWrt;
	}
	@Override
	public String toString() {
		return "NoticeVO [noticeId=" + noticeId + ", noticeRd=" + noticeRd + ", noticeTitle=" + noticeTitle
				+ ", noticeCont=" + noticeCont + ", noticeSe=" + noticeSe + ", noticeWrt=" + noticeWrt + "]";
	}	
}
