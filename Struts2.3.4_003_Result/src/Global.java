import com.opensymphony.xwork2.ActionSupport;


public class Global extends ActionSupport {
	int id;
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String execute() throws Exception {
		if (id == 1) {
			return SUCCESS;
		}
		
		return "global";
	}
	
}
