package ptithcm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpsession=request.getSession();
		if(httpsession.getAttribute("user")==null) {
			response.sendRedirect(request.getContextPath()+"/index.htm");
		}
		return super.preHandle(request, response, handler);
	}
	
}
