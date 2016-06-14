import com.opensymphony.xwork2.ActionSupport;


public class Set extends ActionSupport {
	String user = "user";
	String pwd = "pwd";
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getUser() {
		return this.user;
	}
	public String execute() {
		return SUCCESS;
	}
}
