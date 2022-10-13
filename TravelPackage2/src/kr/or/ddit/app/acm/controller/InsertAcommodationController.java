package kr.or.ddit.app.acm.controller;

import java.io.IOException;    

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

@MultipartConfig
@WebServlet("/acm/AcmInsert.do")
public class InsertAcommodationController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/acm/AcmInsert.jsp")
		.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.setCharacterEncoding("UTF-8");
		// 1. 파라미터 데이터 가져오기
		String acmId = req.getParameter("acmId");
		String acmNm = req.getParameter("acmNm");
		String acmSe = req.getParameter("acmSe");
		String Addr = req.getParameter("Addr");
		String Price = req.getParameter("Price");
		String Qty = req.getParameter("Qty");
		String Writer = req.getParameter("Writer");

		// 2. 서비스 객체 생성하기
		IAcommodationService acmService = AcommodationServiceImpl.getInstance();
		IAtchFileService fileService = AtchFileServiceImpl.getInstance();
		
		// 첨부파일 저장하기
		AtchFileVO atchFileVO = fileService.saveAtchFileList(req);
		 
		
		// 3. 회원정보 등록하기
		AcommodationVO acm = new AcommodationVO();
		acm.setAcmId(acmId);
		acm.setAcmNm(acmNm);
		acm.setAcmSe(acmSe);
		acm.setAddr(Addr);
		acm.setPrice(Price);
		acm.setQty(Qty);
		acm.setWriter(Writer);
		acm.setAtchFileId(atchFileVO.getATCH_FILE_ID());

		int cnt = acmService.register(acm);

		String msg = "";
		if(cnt > 0) {
			// 성공
			msg = "성공";
		} else {
			// 실패
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		
		// 4. 목록 조회 화면으로 이동
//		 	req.getRequestDispatcher("/acm/AcmList.do").forward(req, resp);
		
		String redirectUrl = req.getContextPath() + "/acm/AcmList.do"; // req.getContexrtPath() >> ServletExam 
		
		resp.sendRedirect(redirectUrl);
		}

}
