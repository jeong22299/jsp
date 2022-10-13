package kr.or.ddit.app.vehc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.util.MyBatisUtil;
import kr.or.ddit.app.vehc.vo.VehcVO;

public class VehcDaoImpl implements IVehcDAO{
	private static IVehcDAO vhDao;
	
	private SqlSession sqlSession;
	
	private VehcDaoImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}

	public static IVehcDAO getInstance() {
		if(vhDao == null) {
			vhDao = new VehcDaoImpl();
		}
		return vhDao;
	}
	
	@Override
	public int insertVehc(VehcVO vh) {
		int cnt = sqlSession.insert("vehc.insertVehc", vh);
		return cnt;
	}

	@Override
	public int updateVehc(VehcVO vh) {
		int cnt = sqlSession.update("vehc.updateVehc", vh);
		return cnt;
	}

	@Override
	public int deleteVehc(String vehcId) {
		int cnt = sqlSession.delete("vehc.deleteVehc", vehcId);
		return cnt;
	}

	@Override
	public List<VehcVO> getVehcList() {
		List<VehcVO> vhList = sqlSession.selectList("vehc.vehcAllList");
		return vhList;
	}

	@Override
	public List<VehcVO> searchVehcList(VehcVO vh) {
		List<VehcVO> vhList = sqlSession.selectList("vehc.searchList", vh);
		return vhList;
	}

	@Override
	public VehcVO getVehc(String vehcId) {
		VehcVO vhVo = sqlSession.selectOne("vehc.getVehc", vehcId);
		return vhVo;
	}

	
}
