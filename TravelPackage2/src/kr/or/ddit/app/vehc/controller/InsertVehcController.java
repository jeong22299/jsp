package kr.or.ddit.app.vehc.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.app.vehc.dao.IVehcDAO;
import kr.or.ddit.app.vehc.service.IVehcService;
import kr.or.ddit.app.vehc.service.VehcServiceImpl;
import kr.or.ddit.app.vehc.vo.VehcVO;

@MultipartConfig
@WebServlet("/vehc/vehcInsert.do")
public class InsertVehcController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/vehc/vehcInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String vehcComp = req.getParameter("vehcComp");
		String vehcSe = req.getParameter("vehcSe");	
		String vehcNm = req.getParameter("vehcNm");	
		String vehcDp = req.getParameter("vehcDp");	
		String vehcWrt = req.getParameter("vehcWrt");	

		// 2. 서비스 객체 생성하기		
		IVehcService vhService = VehcServiceImpl.getInstance();
		
		VehcVO vh = new VehcVO();
		vh.setVehcComp(vehcComp);
		vh.setVehcSe(vehcSe);
		vh.setVehcdp(vehcDp);
		vh.setVehcNm(vehcNm);
		vh.setVehcWrt(vehcWrt);
		
		int cnt = vhService.registerVehc(vh);
		String msg = "";
		if(cnt > 0) {
			// 성공
			msg = "성공";
		}else {
			// 실패
			msg = "실패";
		}
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		// 4. 목록 조회 화면으로 이동
		req.getRequestDispatcher("/vehc/vehcList.do").forward(req, resp);

	}
}
