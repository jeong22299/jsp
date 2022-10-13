package kr.or.ddit.app.vehc.service;

import java.util.List;

import kr.or.ddit.app.vehc.vo.VehcVO;

public interface IVehcService {

	// Insert
	public int registerVehc(VehcVO vh);
	
	// Update
	public int modifyVehc(VehcVO vh);
	
	// Delete
	public int removeVehc(String vehcWrt);
	
	// 정보 확인
	public VehcVO getVehc(String vehcId);
	
	// 전체 정보 리스트
	public List<VehcVO> getAllVehcList();
	
	// 검색 정보 리스트
	public List<VehcVO> searchList(VehcVO vh);
}
