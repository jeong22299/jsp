package kr.or.ddit.app.mem.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.mem.service.IMemService;
import kr.or.ddit.app.mem.service.MemServiceImpl;
@WebServlet("/idCheck.do")
public class IdCheckController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		System.out.println("넘어온 아이디값: "+ req.getParameter("check"));
		
		IMemService memService = MemServiceImpl.getInstance();
		
		String idCheck = memService.idCheck(req.getParameter("check"));
		
		System.out.println("DB조회 결과: " + idCheck);
		
		if(req.getParameter("check").equals(idCheck)) {
			resp.getWriter().write("NO");
		}else {
			resp.getWriter().write("OK");
		}
				
		
		/* 새창으로 아이디 중복 확인(idCheck 리턴타입 boolean으로 해야 작동)
		String memEmail = req.getParameter("memMail");
		
		IMemService memservice = MemServiceImpl.getInstance();
		
		boolean result = memservice.idCheck(memEmail);
		
		RequestDispatcher view = req.getRequestDispatcher("/login/IdCheck.jsp");
		req.setAttribute("idCheck", result); 
		req.setAttribute("memEmail", memEmail);	
		
		view.forward(req, resp);
		*/
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
}
