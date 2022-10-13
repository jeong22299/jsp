package kr.or.ddit.app.common.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.common.dao.IAtchFileDAO;
import kr.or.ddit.app.common.service.AtchFileServiceImpl;
import kr.or.ddit.app.common.service.IAtchFileService;
import kr.or.ddit.app.common.vo.AtchFileVO;

@WebServlet("/filedown.do")
public class FileDownController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		long fileId = req.getParameter("ATCH_FILE_ID") != null
						? Long.parseLong(req.getParameter("ATCH_FILE_ID"))
						: -1;
		
		long atchDeSeq = req.getParameter("ATCH_DE_SEQ") != null 
						? Integer.parseInt(req.getParameter("ATCH_DE_SEQ"))
						: 1;
						
		// 파일 정보 조회
		IAtchFileService fileService = AtchFileServiceImpl.getInstance();
		
		AtchFileVO fileVO = new AtchFileVO();
		fileVO.setATCH_FILE_ID(fileId);
		fileVO.setATCH_DE_SEQ(atchDeSeq);
		
		fileVO = fileService.getAtchFileDetail(fileVO);
		
		// 파일 다운로드 처리를 위한 응답헤더 정보 설정하기
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition", "attachment; filename=\""
						+ URLEncoder.encode(fileVO.getATCH_DE_OG(),"UTF-8"));
		
		BufferedInputStream bis = new BufferedInputStream(
										new FileInputStream(fileVO.getATCH_FILE_DE_PATH()));
		BufferedOutputStream bos = new BufferedOutputStream(resp.getOutputStream());
		
		
		int readBytes = 0;
		while((readBytes = bis.read()) != -1) {
			bos.write(readBytes);
		}
		
		bos.close();
		bis.close();
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
