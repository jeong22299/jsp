package kr.or.ddit.app.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.notice.service.INoticeService;
import kr.or.ddit.app.notice.service.NoticeServiceImpl;
import kr.or.ddit.app.notice.vo.NoticeVO;

@WebServlet("/notice/noticeDetail.do")
public class DetailNoticeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String noticeId = req.getParameter("noticeId");
		
		INoticeService noticeService = NoticeServiceImpl.getInstance();
		NoticeVO noticeVo = noticeService.getNotice(noticeId);
		
		req.setAttribute("noticeVo", noticeVo);
		
		req.getRequestDispatcher("/notice/noticeDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
