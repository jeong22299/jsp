package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter2 implements Filter{
	private FilterConfig filterConfig = null;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		// filterConfig : {"id":"admin", "passwd":"1234"}
		this.filterConfig  = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
			
		String message;
		// web.xml의 init-param에서 넘어온 아이디/ 비밀번호
		String param1 = filterConfig.getInitParameter("id");
		String param2 = filterConfig.getInitParameter("passwd");
		
		// loginForm.jsp에서 넘어온 아이디/ 비밀번호
		HttpServletRequest arg0 = (HttpServletRequest) request;
		HttpServletResponse arg1 = (HttpServletResponse) response;

		PrintWriter writer = arg1.getWriter();
		String id = arg0.getParameter("id");
		String passwd = arg0.getParameter("passwd");
		

		if(param1.equals(id) && param2.equals(passwd)) {
			arg1.setCharacterEncoding("UTF-8"); // 문자 인코딩
			arg1.setContentType("text/html;charset=UTF-8"); // 콘텐츠 유형
			
			HttpSession session = arg0.getSession();
			message = "로그인 성공";
			session.setAttribute("userID", id);
			arg1.sendRedirect("loginForm_success.jsp");
		
			} else {
			message = "로그인 실패";
			arg1.sendRedirect("loginForm.jsp");
		}
		// 연속 필터가 있으면 다음 필터로 제어를 넘겨줌
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		
	}

}
