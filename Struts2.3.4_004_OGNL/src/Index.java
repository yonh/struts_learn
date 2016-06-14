import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;


public class Index extends ActionSupport {
	private String str;
	private User user;
	private Map<String, Dog> dogMap = new HashMap<String, Dog>();
	private List<User> users = new ArrayList<User>();
	private Set<Dog> dogs = new HashSet<Dog>();
	
	
	public Index() {
		//初始化集合
		users.add(new User(1));
		users.add(new User(2));
		users.add(new User(3));

		dogs.add(new Dog("dog1"));
		dogs.add(new Dog("dog2"));
		dogs.add(new Dog("dog3"));
		
		dogMap.put("dog100", new Dog("dog100"));
		dogMap.put("dog101", new Dog("dog101"));
		dogMap.put("dog102", new Dog("dog102"));
	}
	public Map<String, Dog> getDogMap() {
		return dogMap;
	}
	public void setDogMap(Map<String, Dog> dogMap) {
		this.dogMap = dogMap;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public Set<Dog> getDogs() {
		return dogs;
	}
	public void setDogs(Set<Dog> dogs) {
		this.dogs = dogs;
	}
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public String execute() {
		return SUCCESS;
	}
	
	//action中的普通方法
	public String m() {
		return "method";
	}
}
