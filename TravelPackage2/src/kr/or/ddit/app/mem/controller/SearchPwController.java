package kr.or.ddit.app.mem.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.or.ddit.app.mem.service.IMemService;
import kr.or.ddit.app.mem.service.MemServiceImpl;
import kr.or.ddit.app.mem.vo.MemberVO;

@WebServlet("/SearchPw.do")
public class SearchPwController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchPwController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("서블릿이 호출되었습니다.");
		resp.setContentType("text/html; charset=utf-8");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
				
		
		String host = "smtp.naver.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
		String user = "intensity23@naver.com"; // 패스워드
		String password = "tmdgns1223,";
		String memMail = req.getParameter("memMail");
		String memTel = req.getParameter("memTel");

		// req로 받은값 memberVO로 setMemMail, setMemTel로 저장해서
		MemberVO mv = new MemberVO();
		mv.setMemMail(memMail);
		mv.setMemTel(memTel);
		
		IMemService memservice = MemServiceImpl.getInstance();
		MemberVO rs = memservice.searchPw(mv);
		

		if (rs != null) {
			out.println("<html><head></head><body>");
			out.println("등록하신 이메일로 인증번호가 발송되었습니다.");
			out.println("</body></html>");
			// SMTP 서버 정보를 설정한다.
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", 587);
			props.put("mail.smtp.auth", "true");

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});

			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(user));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(memMail));

				// 메일 제목
				message.setSubject("인증번호");

				// 메일 내용
				message.setText("인증번호는 : "+(int)Math.floor((Math.random()*99999)+10000));

				// send the message
				Transport.send(message);
				System.out.println("Success Message Send");

			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}

	}
}