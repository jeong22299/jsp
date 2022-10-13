package kr.or.ddit.app.vehc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.vehc.service.IVehcService;
import kr.or.ddit.app.vehc.service.VehcServiceImpl;
import kr.or.ddit.app.vehc.vo.VehcVO;

@WebServlet("/vehc/delete.do")
public class DeleteVehcController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String vehcId = req.getParameter("vehcId");
		
		IVehcService vehcService = VehcServiceImpl.getInstance();
		VehcVO vh = vehcService.getVehc(vehcId);
		
		int cnt = vehcService.removeVehc(vehcId);
		
		String redirectUrl = req.getContextPath() + "/vehc/vehcList.do"; 
		resp.sendRedirect(redirectUrl);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
