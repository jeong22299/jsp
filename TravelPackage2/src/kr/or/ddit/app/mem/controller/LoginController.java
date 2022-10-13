package kr.or.ddit.app.mem.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.app.mem.service.IMemService;
import kr.or.ddit.app.mem.service.MemServiceImpl;
import kr.or.ddit.app.mem.vo.MemberVO;

@WebServlet("/login_check.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("서블릿이 호출되었습니다.");
		resp.setContentType("text/html; charset=utf-8");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");

		String memMail = req.getParameter("memMail");
		String memPw = req.getParameter("memPw");

		String res = getEncrypt(memPw);
		PrintWriter out = resp.getWriter();

		MemberVO mv = new MemberVO();
		mv.setMemMail(memMail);
		mv.setMemPw(res);
		IMemService memservice = MemServiceImpl.getInstance();
		MemberVO rs = memservice.selectMem(mv);

		try {
			if (rs.getMemMail().equals(memMail) && rs.getMemPw().equals(res)) {
				HttpSession session = req.getSession();
				session.setAttribute("id", memMail);
				session.setAttribute("name", rs.getMemNm());
				System.out.println(session.getAttribute("id"));
				System.out.println(session.getAttribute("name"));
				out.println("<html><head></head><body>");
				out.println("<script>alert('환영합니다');</script>");
				out.println("</body></html>");
				resp.sendRedirect("index.jsp");
			} else {

				out.println("<html><head></head><body>");
				out.println("<script>alert('이메일과 비밀번호를 확인하세요'); location.href='login/login.jsp';</script>");
				out.println("</body></html>");

			}
		} catch (NullPointerException e) {
			out.println("<html><head></head><body>");
			out.println("<script>alert('등록되지 않은 아이디 입니다.'); location.href='login/login.jsp';</script>");
			out.println("</body></html>");
		}

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
}
