package kr.or.ddit.app.acm.controller;

import java.io.IOException;  
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.app.acm.service.AcommodationServiceImpl;
import kr.or.ddit.app.acm.service.IAcommodationService;
import kr.or.ddit.app.acm.vo.AcommodationVO;
import kr.or.ddit.app.common.service.AtchFileServiceImpl;
import kr.or.ddit.app.common.service.IAtchFileService;
import kr.or.ddit.app.common.vo.AtchFileVO;


/**
 * Servlet implementation class UpdateMemberController
 */
@MultipartConfig
@WebServlet("/acm/AcmUpdate.do")
public class UpdateAcommodationController extends HttpServlet {
   private static final long serialVersionUID = 1L; 

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
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
      
      req.getRequestDispatcher("/acm/AcmUpdate.jsp").forward(req, resp);
      
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest req, HttpServletResponse resp)
    */
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   
		// 1. 파라미터 데이터 가져오기
		String acmId = req.getParameter("acmId");
		String acmNm = req.getParameter("acmNm");
		String acmSe = req.getParameter("acmSe");
		String Addr = req.getParameter("Addr");
		String Price = req.getParameter("Price");
		String Qty = req.getParameter("Qty");
		String Writer = req.getParameter("Writer");
		
//		long atchFileId = Long.parseLong(req.getParameter("ATCH_FILE_ID"));
		
		// 2. 서비스 객체 생성하기
		IAcommodationService acmService = AcommodationServiceImpl.getInstance();
		IAtchFileService fileService = AtchFileServiceImpl.getInstance();
		
		// 첨부파일 저장하기
		AtchFileVO atchFileVO = fileService.saveAtchFileList(req);
		 
	   // 3. 회원정보 수정하기
		AcommodationVO acmv = new AcommodationVO();
	   acmv.setAcmId(acmId);
	   acmv.setAcmNm(acmNm);
	   acmv.setAcmSe(acmSe);
	   acmv.setAddr(Addr);
	   acmv.setPrice(Price);
	   acmv.setQty(Qty);
	   acmv.setWriter(Writer);
	   
//	   if(atchFileVO == null) { // 새로운 첨부파일이 존재하지 않으면
//		   // 기존 첨부 파일 ID 설정하기
//		   acmv.setAtchFileId(atchFileId);
//	   } else { 
//		   // 신규 첨부 파일 ID 설정하기
//		   acmv.setAtchFileId(atchFileVO.getATCH_FILE_ID());
//	   }
	   
	   
	   int cnt = acmService.modify(acmv);
	   
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
	   String redirectUrl  = req.getContextPath() + "/acm/AcmList.do";
	   
	   resp.sendRedirect(redirectUrl);
	   
   }

}