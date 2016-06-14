package access;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Access3 extends ActionSupport {
	
	//struts���������������set����,���ṩ��Ӧ��Map����
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	public Access3() {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		application = session.getServletContext();
	}
	public String execute() {
		request.setAttribute("r", "request3");
		session.setAttribute("s", "session3");
		application.setAttribute("a", "application3");
		
		return SUCCESS;
	}

}
