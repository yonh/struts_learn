package param;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import model.User;

public class ParamModelDriven extends ActionSupport implements ModelDriven<User>{
	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}
	
	public String execute() {
		System.out.print("name:" + user.getName() + ",age:" + user.getAge());
		return SUCCESS;
	}
	
	
	
}
