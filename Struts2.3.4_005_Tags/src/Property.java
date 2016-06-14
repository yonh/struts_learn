import com.opensymphony.xwork2.ActionSupport;


public class Property extends ActionSupport {
	String user = "user";
	public String getUser() {
		return this.user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String execute() {
		return SUCCESS;
	}

}
