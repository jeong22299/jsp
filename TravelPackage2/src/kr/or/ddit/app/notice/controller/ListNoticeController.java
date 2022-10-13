package kr.or.ddit.app.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.notice.service.INoticeService;
import kr.or.ddit.app.notice.service.NoticeServiceImpl;
import kr.or.ddit.app.notice.vo.NoticeVO;

@WebServlet("/notice/noticeList.do")
public class ListNoticeController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		if(req.getParameter("gubun") != null) {
//			System.out.println("체킁:"+ req.getParameter("gubun"));
//		}
		INoticeService noticeService = NoticeServiceImpl.getInstance();
		
		String noticeId = req.getParameter("noticeId");
		List<NoticeVO> noticeList = noticeService.getAllNoticeList();
		req.setAttribute("noticeList", noticeList);
		
		RequestDispatcher dispatcher=
				req.getRequestDispatcher("/notice/noticeList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
