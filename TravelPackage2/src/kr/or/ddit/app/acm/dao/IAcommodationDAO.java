package kr.or.ddit.app.acm.dao;

import java.util.List;

import kr.or.ddit.app.acm.vo.AcommodationVO;

public interface IAcommodationDAO {

	// 입력
	public int insert(AcommodationVO acmv);

	// 가져오기
	public AcommodationVO getAcm(String acmId);

	// 업뎃
	public int update(AcommodationVO acmv);

	// 삭제
	public int delete(String acmId);

	// 모두 가져오기
	public List<AcommodationVO> getAllAcmList();

	// 검색
	public List<AcommodationVO> search(AcommodationVO acmv);

	// 체크
	public boolean check(String acmId);
}