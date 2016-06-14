package access;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Access2 extends ActionSupport implements RequestAware, SessionAware, ApplicationAware {
	
	//DI dependency injection (����ע��)
	//IoC iverse of control (���Ʒ�ת)
	//struts���������������set����,���ṩ��Ӧ��Map����
	private Map<String, Object> request;
	private Map<String, Object> session;
	private Map<String, Object> application;
	
	public String execute() {
		request.put("r", "request2");
		session.put("s", "session2");
		application.put("a", "application2");
		
		return SUCCESS; 
	}

	@Override
	public void setApplication(Map<String, Object> application) {
		this.application = application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
}
