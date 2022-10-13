package kr.or.ddit.app.tour.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.tour.vo.TourVO;
import kr.or.ddit.app.util.MyBatisUtil;

public class TourDAOImpl implements ITourDAO {
	private static ITourDAO tourDao;
	
	private SqlSession sqlSession;
	
	private TourDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static ITourDAO getInstance() {
		if(tourDao == null) {
			tourDao = new TourDAOImpl();
		}
		return tourDao;
	}
	
	
	@Override
	public int insertTour(TourVO tv) {
		int cnt = sqlSession.insert("tour.insertTour", tv);
		return cnt;
	}

	@Override
	public int updateTour(TourVO tv) {
		int cnt = sqlSession.update("tour.update",tv);
		return cnt;
	}

	@Override
	public int deleteTour(String tourId) {
		int cnt = sqlSession.delete("tour.delete", tourId);
		return cnt;
	}

	@Override
	public TourVO getTour(String tourId) {
		TourVO tourVO = sqlSession.selectOne("tour.getTour", tourId);
		return tourVO;
	}

	@Override
	public List<TourVO> getAllTourList() {
		List<TourVO> tourList = sqlSession.selectList("tour.tourList");
		return tourList;
	}

	@Override
	public List<TourVO> searchTourList(TourVO tv) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
