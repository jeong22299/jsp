package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoginCheckFilter implements Filter{
	private FilterConfig filterConfig = null;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig  = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(id != null && passwd != null) {
			response.setCharacterEncoding("UTF-8"); // 문자 인코딩
			response.setContentType("text/html;charset=UTF-8"); // 콘텐츠 유형
			
			PrintWriter writer = response.getWriter();
			String message = "로그인 성공.";
			writer.println(message);
			return;
		}
		// 연속 필터가 있으면 다음 필터로 제어를 넘겨줌
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		
	}

}
