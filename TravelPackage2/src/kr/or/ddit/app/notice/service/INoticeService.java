package kr.or.ddit.app.notice.service;

import java.util.List;

import kr.or.ddit.app.notice.vo.NoticeVO;


public interface INoticeService {
	// Insert
	public int registerNotice(NoticeVO nv);
	
	// Update
	public int modifyNotice(NoticeVO nv);
	
	// Delete
	public int removeNotice(String noticeId);
	
	// 정보 확인
	public NoticeVO getNotice(String noticeId);
	
	// 전체 정보 리스트
	public List<NoticeVO> getAllNoticeList();
	
	// 검색 정보 리스트
	public List<NoticeVO> searchList(NoticeVO nv);
}
