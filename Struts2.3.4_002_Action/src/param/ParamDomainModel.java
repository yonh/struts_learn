package param;

import model.User;

import com.opensymphony.xwork2.ActionSupport;

public class ParamDomainModel extends ActionSupport {
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String execute() {
		System.out.print("name:" + user.getName() + ",age:" + user.getAge());
		return SUCCESS;
	}
}
