package kr.or.ddit.app.mem.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.mem.service.IMemService;
import kr.or.ddit.app.mem.service.MemServiceImpl;
import kr.or.ddit.app.mem.vo.MemberVO;

@WebServlet("/SearchId.do")
public class SearchIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchIdController() {
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
		PrintWriter out = resp.getWriter();
		
		String memNm = req.getParameter("memNm");
		String memTel = req.getParameter("memTel");
		
		MemberVO mv = new MemberVO();
		mv.setMemNm(memNm);
		mv.setMemTel(memTel);
		System.out.println(mv.getMemAddr());
		IMemService memservice = MemServiceImpl.getInstance();

		MemberVO rs = memservice.searchId(mv);
		
		try {
			if (memNm.equals(rs.getMemNm()) && memTel.equals(rs.getMemTel())) {
				out.println("<html><head></head><body>");
				out.println("회원님의 아이디는 "+ rs.getMemMail()+ "입니다");
				out.println("</body></html>");
			} else {
				
				System.out.println("이메일과 비밀번호를 확인해하세요.");
				
			}
			
		} catch (NullPointerException e) {
			System.out.println("등록하신 아이디가 없습니다.");
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
