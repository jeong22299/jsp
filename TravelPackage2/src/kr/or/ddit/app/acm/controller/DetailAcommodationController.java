package kr.or.ddit.app.acm.controller;

import java.io.IOException; 
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.acm.service.AcommodationServiceImpl;
import kr.or.ddit.app.acm.service.IAcommodationService;
import kr.or.ddit.app.acm.vo.AcommodationVO;
import kr.or.ddit.app.common.service.AtchFileServiceImpl;
import kr.or.ddit.app.common.service.IAtchFileService;
import kr.or.ddit.app.common.vo.AtchFileVO;


@WebServlet("/acm/AcmDetail.do")
public class DetailAcommodationController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String acmId = req.getParameter("acmId");
	      
	      // 1. 서비스 객체 생성하기
	      IAcommodationService acmService = AcommodationServiceImpl.getInstance();
	      AcommodationVO acmv = acmService.getAcm(acmId);
	      
	      IAtchFileService fileService = AtchFileServiceImpl.getInstance();
	      
	      if(acmv.getAtchFileId() > 0) { // 첨부파일 존재
	    	  // 1-2. 첨부파일 정보 조회
	    	  AtchFileVO fileVO = new AtchFileVO();
	    	  fileVO.setATCH_FILE_ID(acmv.getAtchFileId());
	    	  
	    	  List<AtchFileVO> atchFileList = 
	    			  fileService.getAtchFileList(fileVO);
	    	  
	    	  req.setAttribute("atchFileList", atchFileList);
	      }
	      
	      req.setAttribute("acmv", acmv);
	      
	      req.getRequestDispatcher("/acm/AcmDetail.jsp").forward(req, resp);
	      
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
