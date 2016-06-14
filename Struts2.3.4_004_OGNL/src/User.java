
public class User {
	private String userName;
	private U u = new U();
	private int age;
	
	
	public User() {
		if (userName == null) 
			userName = "User";
	}
	public User(String userName) {
		this.userName = userName;
	}
	public User(int age) {
		this.age = age;
	}
	public String toString() {
		return this.userName + ":" + age + "@toString()";
	}

	public U getU() {
		return u;
	}

	public void setU(U u) {
		this.u = u;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}


class U {
	String name="U";

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}