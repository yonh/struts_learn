package action;

import java.awt.Point;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	private String name;
	private int age;
	private Date birthday;
	private Point p;
	
	
	
	public Point getP() {
		return p;
	}

	public void setP(Point p) {
		this.p = p;
	}

	public String getName() {
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

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String execute() {
		return "success";
	}
	
	public String input() {
		return INPUT;
	}
}
