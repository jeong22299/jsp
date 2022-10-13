package kr.or.ddit.app.vehc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.vehc.service.IVehcService;
import kr.or.ddit.app.vehc.service.VehcServiceImpl;
import kr.or.ddit.app.vehc.vo.VehcVO;

@WebServlet("/vehc/vehcList.do")
public class ListVehcController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");

		IVehcService vehcService = VehcServiceImpl.getInstance();
		
		List<VehcVO> vehcList = vehcService.getAllVehcList();
		
		req.setAttribute("vehcList", vehcList);
		
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/vehc/vehcList.jsp");
		
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
