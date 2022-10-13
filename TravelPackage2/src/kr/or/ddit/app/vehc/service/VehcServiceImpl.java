package kr.or.ddit.app.vehc.service;

import java.util.List;

import kr.or.ddit.app.vehc.dao.IVehcDAO;
import kr.or.ddit.app.vehc.dao.VehcDaoImpl;
import kr.or.ddit.app.vehc.vo.VehcVO;

public class VehcServiceImpl implements IVehcService{
	
	private static IVehcService vhService;
	private IVehcDAO vhDao;
	
	private VehcServiceImpl() {
		vhDao = VehcDaoImpl.getInstance();
	}
	
	public static IVehcService getInstance() {
		if(vhService == null) {
			vhService = new VehcServiceImpl();
		}
		return vhService;
	}

	@Override
	public int registerVehc(VehcVO vh) {
		int cnt = vhDao.insertVehc(vh);
		return cnt;
	}

	@Override
	public int modifyVehc(VehcVO vh) {
		int cnt = vhDao.updateVehc(vh);
		return cnt;
	}

	@Override
	public int removeVehc(String vehcWrt) {
		int cnt = vhDao.deleteVehc(vehcWrt);
		return cnt;
	}

	@Override
	public VehcVO getVehc(String vehcId) {
		VehcVO vh = vhDao.getVehc(vehcId);
		return vh;
	}

	@Override
	public List<VehcVO> getAllVehcList() {
		List<VehcVO> vhList = vhDao.getVehcList();
		return vhList;
	}

	@Override
	public List<VehcVO> searchList(VehcVO vh) {
		List<VehcVO> vhList = vhDao.searchVehcList(vh);
			return vhList;
	}

	
}
