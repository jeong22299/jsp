package kr.or.ddit.app.vehc.dao;

import java.util.List;

import kr.or.ddit.app.vehc.vo.VehcVO;

public interface IVehcDAO {

	// 등록
	public int insertVehc(VehcVO vh);
	
	// 수정
	public int updateVehc(VehcVO vh);
	
	// 삭제
	public int deleteVehc(String vehcId);
	
	// 회원정보 가져오기
	public VehcVO getVehc(String vehcId);
	
	// 모든 리스트
	public List<VehcVO> getVehcList();

	// 검색 리스트
	public List<VehcVO> searchVehcList(VehcVO vh);

}
