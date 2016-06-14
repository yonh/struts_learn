package param;

import com.opensymphony.xwork2.ActionSupport;

public class Param extends ActionSupport {
	private String name;
	private int age;
	
	public String execute() {
		//System.out.print("set name1\n");
		System.out.print("name:" + name + ",age:" + age);
		return SUCCESS;
	}

	public String getName() {
		System.out.print("set name\n");
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	
}
