package kr.or.ddit.app.mem.service;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import kr.or.ddit.app.mem.dao.IMemDao;
import kr.or.ddit.app.mem.dao.MemDaoImpl;
import kr.or.ddit.app.mem.vo.MemberVO;

public class MemServiceImpl implements IMemService {

	private static IMemService memService;

	private IMemDao memDao;

	private MemServiceImpl() {
		memDao = MemDaoImpl.getInstance();
	}

	public static IMemService getInstance() {
		if (memService == null) {
			memService = new MemServiceImpl();
		}

		return memService;
	}

	@Override
	public int singUp(MemberVO mv) {

		String prPwd = mv.getMemPw();

//		System.out.println("암호화 적용 전 pw : " + prPwd);

		// 비밀 번호 암호화 후 데이터 삽입
		String res = getEncrypt(prPwd);

		mv.setMemPw(res);

		return memDao.singUp(mv);
	}

	public String getEncrypt(String pwd) {

		String result = "";

		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");

			md.update(pwd.getBytes("UTF-8"));

			byte[] nPwd = md.digest();

			StringBuffer sb = new StringBuffer();
			for (byte b : nPwd) {
				sb.append(String.format("%02x", b));
			}

			result = sb.toString();

//			System.out.println("암호화 적용 후 pw : " + result);

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return result;
	}
	
	@Override
	public String idCheck(String memMail) {
		return memDao.idCheck(memMail);
	}

	@Override
	public MemberVO selectMem(MemberVO mv) {
		return memDao.selectMem(mv);
	}

	@Override
	public MemberVO searchId(MemberVO mv) {

		return memDao.searchId(mv);
	}

	@Override
	public MemberVO searchPw(MemberVO mv) {
		return memDao.searchPw(mv);
	}


}
