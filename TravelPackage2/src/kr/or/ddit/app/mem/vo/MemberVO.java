package kr.or.ddit.app.mem.vo;

public class MemberVO {
	
	private String memMail; // 이메일
	private String memPw; // 비밀번호
	private String memNm; // 이름
	private String memBir; // 생년월일
	private String memTel; // 전화번호
	private String memAddr; // 주소s
	private String memPreReg; // 선호지역
	private String memMileage; // 마일리지
	
	// 마일리지 회원가입시 부여할건지, 선호지역 선택하지 않으면 어떻게 할 것인지
	
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemNm() {
		return memNm;
	}
	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}
	public String getMemBir() {
		return memBir;
	}
	public void setMemBir(String memBir) {
		this.memBir = memBir;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public String getMemAddr() {
		return memAddr;
	}
	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}
	public String getMemPreReg() {
		return memPreReg;
	}
	public void setMemPreReg(String memPreReg) {
		this.memPreReg = memPreReg;
	}
	public String getMemMileage() {
		return memMileage;
	}
	public void setMemMileage(String memMileage) {
		this.memMileage = memMileage;
	}
	
	
}
