package kr.or.ddit.app.mem.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;


@WebServlet("/admin_check.do")
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminLoginController() {
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
		Properties properties = new Properties();

		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String resource = "admin.properties";
		

		try {
			Reader reader = Resources.getResourceAsReader(resource);
			properties.load(reader);
			HttpSession session = req.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", "관리자");
			System.out.println(session.getAttribute("id"));
			System.out.println(session.getAttribute("name"));
			if (id.equals(properties.getProperty("id")) && password.equals(properties.getProperty("password"))) {
				out.println("<html><head></head><body>");
				out.println("<script>alert('환영합니다 관리자님');location.href='index.jsp';</script>");
				out.println("</body></html>");
			} else {
				out.println("<html><head></head><body>");
				out.println("<script>alert('이메일과 비밀번호를 확인하세요'); location.href='login/login.jsp';</script>");
				out.println("</body></html>");
			}

		} catch (NullPointerException e) {
			out.println("<html><head></head><body>");
			out.println("<script>alert('등록되지 않은 아이디 입니다.'); location.href='login/login.jsp';</script>");
			out.println("</body></html>");
		}

	}

}
