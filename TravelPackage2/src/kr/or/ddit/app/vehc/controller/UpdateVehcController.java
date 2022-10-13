package kr.or.ddit.app.vehc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.vehc.service.IVehcService;
import kr.or.ddit.app.vehc.service.VehcServiceImpl;
import kr.or.ddit.app.vehc.vo.VehcVO;

@MultipartConfig
@WebServlet("/vehc/vehcUpdate.do")
public class UpdateVehcController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");

		String vehcId = req.getParameter("vehcId");
		
		IVehcService vehcService = VehcServiceImpl.getInstance();
		VehcVO vehc = vehcService.getVehc(vehcId);
		
		req.setAttribute("vehc", vehc);
		
		req.getRequestDispatcher("/vehc/vehcUpdate.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String vehcId = req.getParameter("vehcId");
		String vehcComp = req.getParameter("vehcComp");
		String vehcSe = req.getParameter("vehcSe");	
		String vehcNm = req.getParameter("vehcNm");	
		String vehcDp = req.getParameter("vehcDp");	
		String vehcWrt = req.getParameter("vehcWrt");	

		// 2. 서비스 객체 생성하기		
		IVehcService vhService = VehcServiceImpl.getInstance();
		
		// 3. 회원정보 수정하기
		VehcVO vh = new VehcVO();
		vh.setVehcId(vehcId);
		vh.setVehcComp(vehcComp);
		vh.setVehcSe(vehcSe);
		vh.setVehcNm(vehcNm);
		vh.setVehcdp(vehcDp);
		vh.setVehcWrt(vehcWrt);
		
		int cnt = vhService.modifyVehc(vh);
		
		// 4. 목록 조회 화면으로 이동
		String redirectUrl = req.getContextPath() + "/vehc/vehcList.do"; 
		resp.sendRedirect(redirectUrl);
	}

}
