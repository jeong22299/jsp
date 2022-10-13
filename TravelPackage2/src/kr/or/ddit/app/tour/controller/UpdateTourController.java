package kr.or.ddit.app.tour.controller;

import java.io.IOException;  
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.app.common.service.AtchFileServiceImpl;
import kr.or.ddit.app.common.service.IAtchFileService;
import kr.or.ddit.app.common.vo.AtchFileVO;
import kr.or.ddit.app.tour.service.ITourService;
import kr.or.ddit.app.tour.service.TourServiceImpl;
import kr.or.ddit.app.tour.vo.TourVO;


/**
 * Servlet implementation class UpdateMemberController
 */
@MultipartConfig
@WebServlet("/tour/tourUpdate.do")
public class UpdateTourController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      String tourId = req.getParameter("tourId");
      
      // 1. 서비스 객체 생성하기
      ITourService tourService = TourServiceImpl.getInstance();
      TourVO tv = tourService.getTour(tourId);
      
      IAtchFileService fileService = AtchFileServiceImpl.getInstance();
      
      if(tv.getAtchFileId() > 0) { // 첨부파일 존재
    	  // 1-2. 첨부파일 정보 조회
    	  AtchFileVO fileVO = new AtchFileVO();
    	  fileVO.setATCH_FILE_ID(tv.getAtchFileId());
    	  
    	  List<AtchFileVO> atchFileList = 
    			  fileService.getAtchFileList(fileVO);
    	  
    	  req.setAttribute("atchFileList", atchFileList);
      }
      
      req.setAttribute("tv", tv);
      
      req.getRequestDispatcher("/tour/tourUpdate.jsp").forward(req, resp);
      
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest req, HttpServletResponse resp)
    */
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   
		// 1. 파라미터 데이터 가져오기
		String tourId = req.getParameter("tourId");
		String tourNm = req.getParameter("tourNm");
		String tourSe = req.getParameter("tourSe");
		String tourAddr = req.getParameter("tourAddr");
		String tourPri = req.getParameter("tourPri");
		String tourMaxTo = req.getParameter("tourMaxTo");
		String tourWrt = req.getParameter("tourWrt");
		Long atchFileId = Long.parseLong(req.getParameter("atchFileId"));
		
		// 2. 서비스 객체 생성하기
		ITourService tourService = TourServiceImpl.getInstance();
		IAtchFileService fileService = AtchFileServiceImpl.getInstance();
		
		// 첨부파일 저장하기
		AtchFileVO atchFileVO = fileService.saveAtchFileList(req);
		 
	   // 3. 회원정보 수정하기
		TourVO tv = new TourVO();
	   tv.setTourId(tourId);
	   tv.setTourNm(tourNm);
	   tv.setTourSe(tourSe);
	   tv.setTourAddr(tourAddr);
	   tv.setTourPri(tourPri);
	   tv.setTourMaxTo(tourMaxTo);
	   tv.setTourWrt(tourWrt);
	   
	   if(atchFileVO == null) { // 새로운 첨부파일이 존재하지 않으면
		   // 기존 첨부 파일 ID 설정하기
		   tv.setAtchFileId(atchFileId);
	   } else { 
		   // 신규 첨부 파일 ID 설정하기
		   tv.setAtchFileId(atchFileVO.getATCH_FILE_ID());
	   }
	   
	   
	   int cnt = tourService.modifyTour(tv);
	   
	   String msg = "";
	   
	   if(cnt > 0) {
		   msg = "성공";
	   }else {
		   msg = "실패";
	   }
	   
//	   req.setAttribute("msg", msg);
	  
	   HttpSession session = req.getSession();
	   session.setAttribute("msg", msg);
	   
	  
	   // 4. 목록 조회 화면으로 이동
	   String redirectUrl  = req.getContextPath() + "/tour/tourList.do";
	   
	   resp.sendRedirect(redirectUrl);
	   
   }

}