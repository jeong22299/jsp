package kr.or.ddit.app.common.dao;

import java.util.List; 

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.app.common.vo.AtchFileVO;

public class AtchFileDAOImpl implements IAtchFileDAO {

	private static IAtchFileDAO fileDAO;
	
	
	private AtchFileDAOImpl() { 
	}
	
	public static IAtchFileDAO getInstance() {
		if(fileDAO == null) {
			fileDAO = new AtchFileDAOImpl();
		}
		return fileDAO;
	}
	
	
	@Override
	public int insertAtchFile(SqlSession session, AtchFileVO atchFileVO) {
								// 네임스페이스.쿼리문
		return session.insert("atchFile.AtchFileinsert",atchFileVO);
	}

	@Override
	public int insertAtchFileDetail(SqlSession session, AtchFileVO atchFileVO) {
		return session.insert("atchFile.AtchFileInsertDetail", atchFileVO);
	}

	@Override
	public List<AtchFileVO> getAtchFileList(SqlSession session, AtchFileVO atchFileVO) {
		return session.selectList("atchFile.getAtchFileList", atchFileVO);
	}

	@Override
	public AtchFileVO getAtchFileDetail(SqlSession session, AtchFileVO atchFileVO) {
		return session.selectOne("atchFile.getAtchFileDetail",atchFileVO);
	}
	
}
