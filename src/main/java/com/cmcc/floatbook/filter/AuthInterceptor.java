
package com.cmcc.floatbook.filter;


import javax.servlet.FilterChain;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class AuthInterceptor extends HandlerInterceptorAdapter  {
	private Log logger = LogFactory.getLog(this.getClass());

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, FilterChain chain) 
					throws Exception {
		logger.info("AuthInterceptor：登录拦截");
		String url = request.getServletPath();
		if (noFileUrl(url, request)) {
			chain.doFilter(request, response);
			return true;
		}
		HttpSession session = request.getSession();
		if (session == null || session.getAttribute("admin") == null) {
			if (request.getHeader("x-requested-with") != null
					&& request.getHeader("x-requested-with").equalsIgnoreCase(
							"XMLHttpRequest")) {
				response.setContentType("text/html;charset=UTF-8");
				response.setStatus(6000);
				return false;
			} else {
				logger.info("Interceptor：跳转到login页面！");
				request.getRequestDispatcher("login.jsp").forward(request,
						response);
				return false;
			}
		}
		return true;
	}

	protected boolean noFileUrl(String url, HttpServletRequest request) {
		if (url.toLowerCase().indexOf("login") > 0
				|| url.indexOf("login.jsp") > 0
				|| url.indexOf("loginYanZhengMa") > 0) {
			return true;
		}
		return false;
	}

}
