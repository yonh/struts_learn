import com.opensymphony.xwork2.ActionSupport;


public class Dynamic extends ActionSupport {
	int i;
	String r;

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}
	
	public void setR(String r) {
		this.r = r;
	}
	public String getR() {
		return r;
	}

	public String execute() throws Exception {

		if (i == 1) {
			r = "/dynamic/yes.jsp";
		} else if (i == 2) {
			r = "/dynamic/no.jsp";
		} else {
			r = "/dynamic/error.jsp";
		}

		//return "a";
		return SUCCESS;
	}
	
}
