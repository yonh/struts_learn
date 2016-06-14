package action;

import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

public class LanguageAction extends ActionSupport implements ServletContextAware {
	ServletContext context;
	
	public String execute() {
		System.out.println(context.getContextPath());
		
		return "success";
	}

	@Override
	public void setServletContext(ServletContext arg0) {
		this.context = arg0;
	}
	
		
}
