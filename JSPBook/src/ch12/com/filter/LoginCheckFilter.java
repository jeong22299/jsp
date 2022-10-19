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

public class LoginCheckFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
			
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		HttpSession session = request.getSession();

		if(session == null) {
			response.sendRedirect("/homework/loginForm.jsp");
		}
		String id = (String) session.getAttribute("userId");

		if(id == null) {
			response.sendRedirect("/homework/loginForm.jsp");
		}
		
		// 연속 필터가 있으면 다음 필터로 제어를 넘겨줌
		chain.doFilter(req, resp);
	}
	
	@Override
	public void destroy() {
		
	}

}
