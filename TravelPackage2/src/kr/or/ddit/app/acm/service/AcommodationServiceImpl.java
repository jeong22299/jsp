package kr.or.ddit.app.acm.service;

import java.util.List; 

import kr.or.ddit.app.acm.dao.AcommodationDAOImpl;
import kr.or.ddit.app.acm.dao.IAcommodationDAO;
import kr.or.ddit.app.acm.vo.AcommodationVO;

public class AcommodationServiceImpl implements IAcommodationService {

	private static IAcommodationService acmService;

	private IAcommodationDAO acmDao;

	private AcommodationServiceImpl() {
		acmDao = AcommodationDAOImpl.getInstance();
	}

	public static IAcommodationService getInstance() {
		if (acmService == null) {
			acmService = new AcommodationServiceImpl();
		}

		return acmService;
	}

	@Override
	public int register(AcommodationVO acmv) {
		int cnt = acmDao.insert(acmv);
		return cnt;
	}

	

	@Override
	public int modify(AcommodationVO acmv) {
		int cnt = acmDao.update(acmv);
		return cnt;
	}

	@Override
	public int delete(String acmId) {
		int cnt = acmDao.delete(acmId);
		return cnt;
	}

	@Override
	public List<AcommodationVO> getAllAcmList() {
		List<AcommodationVO> acmList = acmDao.getAllAcmList();
		return acmList;
	}

	public void accountTransfer() {
		try {
		} catch (Exception ex) {
		}
	}

	@Override
	public List<AcommodationVO> search(AcommodationVO acmv) {

		List<AcommodationVO> acmList = acmDao.search(acmv);

		return acmList;
	}

	@Override
	public AcommodationVO getAcm(String acmId) {

		AcommodationVO acmv = acmDao.getAcm(acmId);

		return acmv;
	}

	@Override
	public boolean check(String acmId) {
	   boolean chk = acmDao.check(acmId);
		return chk;
	}

}