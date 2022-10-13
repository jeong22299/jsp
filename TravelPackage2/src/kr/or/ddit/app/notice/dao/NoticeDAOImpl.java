package kr.or.ddit.app.notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.notice.vo.NoticeVO;
import kr.or.ddit.app.util.MyBatisUtil;

public class NoticeDAOImpl implements INoticeDAO {

	private static INoticeDAO nvDao;
	private SqlSession sqlSession;
	
	private NoticeDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	public static INoticeDAO getInsetance() {
		if(nvDao == null) {
			nvDao = new NoticeDAOImpl();
		}
		return nvDao;
	}
	@Override
	public int insertNotice(NoticeVO nv) {
		int cnt = sqlSession.insert("notice.insertNotice", nv);
		return cnt;
	}

	@Override
	public int updateNotice(NoticeVO nv) {
		int cnt = sqlSession.update("notice.updateNotice", nv);
		return cnt;
	}

	@Override
	public int deleteNotice(String noticeId) {
		int cnt = sqlSession.delete("notice.deleteNotice", noticeId);
		return cnt;
	}

	@Override
	public NoticeVO getNotice(String noticeId) {
		NoticeVO ntVo = sqlSession.selectOne("notice.getNotice", noticeId); 
		return ntVo;
	}

	@Override
	public List<NoticeVO> getNoticeList() {
		List<NoticeVO> ntList = sqlSession.selectList("notice.noticeAllList");
		return ntList;
	}

	@Override
	public List<NoticeVO> searchNoticeList(NoticeVO nv) {
		List<NoticeVO> ntList = sqlSession.selectList("notice.searchList", nv);
		return ntList;
	}

}
