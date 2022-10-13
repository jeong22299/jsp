package kr.or.ddit.app.notice.dao;

import java.util.List;

import kr.or.ddit.app.notice.vo.NoticeVO;

public interface INoticeDAO {
	
	// 등록
	public int insertNotice(NoticeVO nv);
	
	// 수정
	public int updateNotice(NoticeVO nv);
	
	// 삭제
	public int deleteNotice(String noticeId);
	
	// 회원정보 가져오기
	public NoticeVO getNotice(String noticeId);
	
	// 모든 리스트
	public List<NoticeVO> getNoticeList();

	// 검색 리스트
	public List<NoticeVO> searchNoticeList(NoticeVO nv);

}
