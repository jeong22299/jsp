package kr.or.ddit.app.tour.service;

import java.util.List;

import kr.or.ddit.app.tour.vo.TourVO;


public interface ITourService {

	// Insert
		public int registerTour(TourVO tv);
		
		// Update
		public int modifyTour(TourVO tv);
		
		// Delete
		public int removeTour(String tourId);
		
		// 정보 확인
		public TourVO getTour(String tourId);
		
		// 전체 정보 리스트
		public List<TourVO> getAllTourList();
		
		// 검색 정보 리스트
		public List<TourVO> searchList(TourVO vh);
}
