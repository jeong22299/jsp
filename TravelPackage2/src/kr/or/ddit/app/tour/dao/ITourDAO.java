package kr.or.ddit.app.tour.dao;

import java.util.List;

import kr.or.ddit.app.tour.vo.TourVO;

public interface ITourDAO {
	
	// 등록
	public int insertTour(TourVO tv);

	// 수정
	public int updateTour(TourVO tv);
	
	// 삭제
	public int deleteTour(String tourId);
	
	// 관광 정보 가져오기
	public TourVO getTour(String tourId);
	
	// 모든 리스트 
	public List<TourVO> getAllTourList();
	
	// 검색 리스트
	public List<TourVO> searchTourList(TourVO tv);
}
