package kr.or.ddit.app.tour.service;

import java.util.List;

import kr.or.ddit.app.tour.dao.ITourDAO;
import kr.or.ddit.app.tour.dao.TourDAOImpl;
import kr.or.ddit.app.tour.vo.TourVO;

public class TourServiceImpl implements ITourService {
	private static ITourService tourService;
	private ITourDAO tourDao;
	
	private TourServiceImpl() {
		tourDao = TourDAOImpl.getInstance();
	}
	
	public static ITourService getInstance() {
		if(tourService == null) {
			tourService = new TourServiceImpl();
		}
		return tourService;
	}

	@Override
	public int registerTour(TourVO tv) {
		int cnt = tourDao.insertTour(tv);
		return cnt;
	}

	@Override
	public int modifyTour(TourVO tv) {
		int cnt = tourDao.updateTour(tv);
		return cnt;
	}

	@Override
	public int removeTour(String tourId) {
		int cnt = tourDao.deleteTour(tourId);
		return cnt;
	}

	@Override
	public TourVO getTour(String tourId) {
		TourVO trmv = tourDao.getTour(tourId);
		return trmv;
	}

	@Override
	public List<TourVO> getAllTourList() {
		List<TourVO> tourList = tourDao.getAllTourList();
		return tourList;
	}

	@Override
	public List<TourVO> searchList(TourVO vh) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
