import com.opensymphony.xwork2.ActionSupport;


public class UI extends ActionSupport {
	
	
	public String ui2() {
		this.addFieldError("err", "error!");
		return "ui2";
	}
	public String ui1() {
		this.addFieldError("err", "error!");
		return "ui1";
	}
	public String ui3() {
		this.addFieldError("err", "error!");
		return "ui3";
	}
}
