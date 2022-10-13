package kr.or.ddit.app.acm.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.acm.vo.AcommodationVO;
import kr.or.ddit.app.util.MyBatisUtil;

public class AcommodationDAOImpl implements IAcommodationDAO {

	private static IAcommodationDAO acmDao;

	private SqlSession sqlSession;

	private AcommodationDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}

	public static IAcommodationDAO getInstance() {
		if (acmDao == null) {
			acmDao = new AcommodationDAOImpl();
		}
		return acmDao;
	}

	@Override
	public int insert(AcommodationVO acmv) {
		int cnt = sqlSession.insert("acm.insert", acmv);
		return cnt;
	}

	@Override
	public int update(AcommodationVO acmv) {
		int cnt = sqlSession.update("acm.update", acmv);
		return cnt;
	}

	@Override
	public int delete(String acmId) {
		int cnt = sqlSession.delete("acm.delete", acmId);
		return cnt;
	}

	@Override
	public List<AcommodationVO> getAllAcmList() {
		List<AcommodationVO> acmList = sqlSession.selectList("acm.acmList");
		return acmList;
	}

	@Override
	public List<AcommodationVO> search(AcommodationVO acmv) {
		List<AcommodationVO> acmList = sqlSession.selectList("acm.search", acmv);
		return acmList;
	}

	@Override
	public AcommodationVO getAcm(String acmId) {

		AcommodationVO acmVO = sqlSession.selectOne("acm.getAcm", acmId);

		return acmVO;
	}

	@Override
	public boolean check(String acmId) {
		boolean chk = false;
		int cnt = sqlSession.selectOne("acm.check", acmId);
		if (cnt > 0) {
			chk = true;
		}
		return chk;
	}

}