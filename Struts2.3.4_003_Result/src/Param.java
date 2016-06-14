import com.opensymphony.xwork2.ActionSupport;


public class Param extends ActionSupport {
	String t = "abcde";
	
	public String getT() {
		return t;
	}

	public void setT(String t) {
		this.t = t;
	}

	public String execute() {
		return SUCCESS;
	}
}
