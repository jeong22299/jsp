package kr.or.ddit.app.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.notice.service.INoticeService;
import kr.or.ddit.app.notice.service.NoticeServiceImpl;
import kr.or.ddit.app.notice.vo.NoticeVO;

@MultipartConfig
@WebServlet("/notice/noticeInsert.do")
public class InsertNoticeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/notice/noticeInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String noticeSe = req.getParameter("noticeSe");
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeCont = req.getParameter("noticeCont");
		String noticeWrt = req.getParameter("noticeWrt");

		INoticeService ntService = NoticeServiceImpl.getInstance();
		
		NoticeVO nv = new NoticeVO();
		nv.setNoticeSe(noticeSe);
		nv.setNoticeTitle(noticeTitle);
		nv.setNoticeCont(noticeCont);
		nv.setNoticeWrt(noticeWrt);
		
		int cnt = ntService.registerNotice(nv);
		
		String redirectUrl = req.getContextPath() + "/notice/noticeList.do";
		resp.sendRedirect(redirectUrl);
	}
	
}
