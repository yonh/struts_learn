package action;

import com.opensymphony.xwork2.ActionSupport;

public class ParamIndexAction extends ActionSupport {
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String execute() {
		return "success";
	}
}
