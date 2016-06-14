package access;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

public class Access4 extends ActionSupport implements ServletRequestAware {
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	
	public String execute() {
		request.setAttribute("r", "request4");
		session.setAttribute("s", "session4");
		application.setAttribute("a", "application4");
		
		return SUCCESS; 
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = this.request.getSession();
		this.application = this.session.getServletContext();
	}

	
}
