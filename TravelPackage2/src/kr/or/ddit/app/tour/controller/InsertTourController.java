package kr.or.ddit.app.tour.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.tour.service.ITourService;
import kr.or.ddit.app.tour.service.TourServiceImpl;
import kr.or.ddit.app.tour.vo.TourVO;
import kr.or.ddit.app.common.service.AtchFileServiceImpl;
import kr.or.ddit.app.common.service.IAtchFileService;
import kr.or.ddit.app.common.vo.AtchFileVO;

@MultipartConfig
@WebServlet("/tour/tourInsert.do")
public class InsertTourController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/tour/tourInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String tourNm = req.getParameter("tourNm");
		String tourSe = req.getParameter("tourSe");
		String tourAddr = req.getParameter("tourAddr");
		String tourPri = req.getParameter("tourPri");
		String tourMaxTo = req.getParameter("tourMaxTo");
		String tourWrt = req.getParameter("tourWrt");
		
		ITourService tourService = TourServiceImpl.getInstance();
		IAtchFileService fileService = AtchFileServiceImpl.getInstance();

		// 첨부파일 저장하기
		AtchFileVO atchFileVO = fileService.saveAtchFileList(req);
		
		TourVO tv = new TourVO();
		tv.setTourNm(tourNm);
		tv.setTourSe(tourSe);
		tv.setTourAddr(tourAddr);
		tv.setTourPri(tourPri);
		tv.setTourMaxTo(tourMaxTo);
		tv.setTourWrt(tourWrt);
		tv.setAtchFileId(atchFileVO.getATCH_FILE_ID());
		
		int cnt = tourService.registerTour(tv);
		
//		req.getRequestDispatcher("/tour/tourList.do").forward(req, resp);
		
		String redirectUrl = req.getContextPath() + "/tour/tourList.do";
		resp.sendRedirect(redirectUrl);
	}
}












