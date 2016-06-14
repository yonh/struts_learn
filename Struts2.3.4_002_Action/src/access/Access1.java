package access;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Access1 extends ActionSupport {
	
	private Map request;
	private Map session;
	private Map application;
	
	public Access1() {
		request = (Map)ActionContext.getContext().get("request");
		session = ActionContext.getContext().getSession();
		application = ActionContext.getContext().getApplication();
	}
	
	public String execute() {
		request.put("r", "request1");
		session.put("s", "session1");
		application.put("a", "application1");
		
		return SUCCESS;
	}
}
