package kr.or.ddit.app.notice.service;

import java.util.List;

import kr.or.ddit.app.notice.dao.INoticeDAO;
import kr.or.ddit.app.notice.dao.NoticeDAOImpl;
import kr.or.ddit.app.notice.vo.NoticeVO;

public class NoticeServiceImpl implements INoticeService {

	private static INoticeService ntService;
	private INoticeDAO ntDao;
	
	private NoticeServiceImpl() {
		ntDao = NoticeDAOImpl.getInsetance();
	}
	
	public static INoticeService getInstance() {
		if(ntService == null) {
			ntService = new NoticeServiceImpl();
		}
		return ntService;
	}
	@Override
	public int registerNotice(NoticeVO nv) {
		int cnt = ntDao.insertNotice(nv);
		return cnt;
	}

	@Override
	public int modifyNotice(NoticeVO nv) {
		int cnt = ntDao.updateNotice(nv);
		return cnt;
	}

	@Override
	public int removeNotice(String noticeId) {
		int cnt = ntDao.deleteNotice(noticeId);
		return cnt;
	}

	@Override
	public NoticeVO getNotice(String noticeId) {
		NoticeVO nv = ntDao.getNotice(noticeId); 
		return nv;
	}

	@Override
	public List<NoticeVO> getAllNoticeList() {
		List<NoticeVO> nvList = ntDao.getNoticeList();
		return nvList;
	}

	@Override
	public List<NoticeVO> searchList(NoticeVO nv) {
		List<NoticeVO> nvList = ntDao.searchNoticeList(nv); 
		return nvList;
	}

}
