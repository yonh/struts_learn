import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.util.SubsetIteratorFilter.Decider;

import com.opensymphony.xwork2.ActionSupport;

public class MySubsetTagAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private int tmp = 444;
	public int getTmp() {
		return this.tmp;
	}
	public void setIii(int tmp) {
		this.tmp = tmp;
	}
	private List<Integer> l = new ArrayList<Integer>();

	public String execute() throws Exception {

		l.add(new Integer(1));
		l.add(new Integer(2));
		l.add(new Integer(3));
		l.add(new Integer(4));
		l.add(new Integer(5));
		return "success";
	}

	public List<Integer> getMyList() {
		return l;
	}

	public void setMyList(List<Integer> l) {
		this.l = l;
	}
	
	//可以使用subset标签decider属性取符合该方法要求的值
	public Decider getMyDecider() {
	     return new Decider() {
	         public boolean decide(Object element) throws Exception {
	             int i = ((Integer)element).intValue();
	             return (((i % 2) == 0)?true:false);
	         }
	     };
	}
	
}