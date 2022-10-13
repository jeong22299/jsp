package kr.or.ddit.app.tour.controller;

import java.io.IOException; 
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.tour.service.ITourService;
import kr.or.ddit.app.tour.service.TourServiceImpl;
import kr.or.ddit.app.tour.vo.TourVO;


@WebServlet("/tour/tourDetail.do")
public class DetailTourController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String tourId = req.getParameter("tourId");
	      
	      // 1. 서비스 객체 생성하기
	      ITourService tourService = TourServiceImpl.getInstance();
	      TourVO tv = tourService.getTour(tourId);
	      
//	      IAtchFileService fileService = AtchFileServiceImpl.getInstance();
	      
//	      if(tourv.gettourAtchFileId() > 0) { // 첨부파일 존재
//	    	  // 1-2. 첨부파일 정보 조회
//	    	  AtchFileVO fileVO = new AtchFileVO();
//	    	  fileVO.setAtchFileId(tourv.gettourAtchFileId());
//	    	  
//	    	  List<AtchFileVO> atchFileList = 
//	    			  fileService.getAtchFileList(fileVO);
//	    	  
//	    	  req.setAttribute("atchFileList", atchFileList);
//	      }
	      
	      req.setAttribute("tv", tv);
	      
	      req.getRequestDispatcher("/tour/tourDetail.jsp").forward(req, resp);
	      
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
