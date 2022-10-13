package kr.or.ddit.app.mem.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.mem.service.IMemService;
import kr.or.ddit.app.mem.service.MemServiceImpl;
import kr.or.ddit.app.mem.vo.MemberVO;

@WebServlet("/signUp.do")
public class SignUpMemController extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      doPost(req, resp);

   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      System.out.println("서블릿이 호출되었습니다.");

      req.setCharacterEncoding("UTF-8");

      String memMail = req.getParameter("memMail");
      String memPw = req.getParameter("memPw");
      String memNm = req.getParameter("memNm");
      String memBir = req.getParameter("memBir");
      String memTel = req.getParameter("memTel");
      String memAddr1 = req.getParameter("memAddr1");
      String memAddr2 = req.getParameter("memAddr2");
      String memAddr3 = req.getParameter("memAddr3");
      String memPreReg = req.getParameter("memPreReg");
   
      MemberVO mv = new MemberVO();

      mv.setMemMail(memMail);
      mv.setMemPw(memPw);
      mv.setMemNm(memNm);
      mv.setMemBir(memBir);
      mv.setMemTel(memTel);
      mv.setMemAddr(memAddr1 + " " + memAddr2 + memAddr3);
      mv.setMemPreReg(memPreReg);

      IMemService memservice = MemServiceImpl.getInstance();

      int rs = memservice.singUp(mv);

      if (rs > 0) {
         System.out.println("DB 저장 성공");

      } else {
         System.out.println("DB 저장 실패");
      }

      req.getRequestDispatcher("/login/login.jsp").forward(req, resp);

   }

}