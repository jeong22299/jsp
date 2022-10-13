package kr.or.ddit.app.mem.service;

import kr.or.ddit.app.mem.vo.MemberVO;

public interface IMemService {
	
	public int singUp(MemberVO mv);
	
	public String idCheck(String memMail);
	
	public MemberVO selectMem(MemberVO mv);
	
	public MemberVO searchId(MemberVO mv);
	
	public MemberVO searchPw(MemberVO mv);
}
