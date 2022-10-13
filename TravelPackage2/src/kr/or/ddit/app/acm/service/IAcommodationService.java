package kr.or.ddit.app.acm.service;

import java.util.List;

import kr.or.ddit.app.acm.vo.AcommodationVO;


public interface IAcommodationService {

// 입력
	public int register(AcommodationVO acmv);

// 체크
	public boolean check(String acmId);

// 가져오기 
	public AcommodationVO getAcm(String acmId);

// 업뎃
	public int modify(AcommodationVO acmv);

// 삭제
	public int delete(String acmId);

//모든 정보
	public List<AcommodationVO> getAllAcmList();

// 조회
	public List<AcommodationVO> search(AcommodationVO acmv);
}