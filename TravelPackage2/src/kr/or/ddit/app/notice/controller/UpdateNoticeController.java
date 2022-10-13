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
@WebServlet("/notice/noticeUpdate.do")
public class UpdateNoticeController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String noticeId = req.getParameter("noticeId");
		
		INoticeService noticeService = NoticeServiceImpl.getInstance();
		NoticeVO nv = noticeService.getNotice(noticeId);
		
		req.setAttribute("nv", nv);
		
		req.getRequestDispatcher("/notice/noticeUpdate.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String noticeId = req.getParameter("noticeId");
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeCont = req.getParameter("noticeCont");
		String noticeSe = req.getParameter("noticeSe");
		String noticeWrt = req.getParameter("noticeWrt");
		
		INoticeService noticeService = NoticeServiceImpl.getInstance();
		
		NoticeVO nv = new NoticeVO();
		nv.setNoticeId(noticeId);
		nv.setNoticeTitle(noticeTitle);
		nv.setNoticeCont(noticeCont);
		nv.setNoticeSe(noticeSe);
		nv.setNoticeWrt(noticeWrt);
		
		int cnt = noticeService.modifyNotice(nv);
		
		String redirectUrl = req.getContextPath() + "/notice/noticeList.do"; 
		resp.sendRedirect(redirectUrl);
		
	}

}














