package chinese;

import com.opensymphony.xwork2.ActionSupport;

public class Chinese extends ActionSupport {
	private String name;
	
	public String execute() {
		System.out.print("name:" + name);
		return SUCCESS;
	}

	public String getName() {
		System.out.print("set name\n");
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
