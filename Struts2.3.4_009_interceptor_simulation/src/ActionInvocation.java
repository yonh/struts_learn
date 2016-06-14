import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


public class ActionInvocation {
	List<Interceptor> interceptorList = new ArrayList<Interceptor>();
	Iterator<Interceptor> interceptors;
	int index = -1;
	Action a = new Action();//action
	
	public ActionInvocation() {
		this.interceptorList.add(new FirstInterceptor());
		this.interceptorList.add(new SecondInterceptor());
		interceptors = interceptorList.iterator();
	}
	
	public void invoke() {
//		index ++;
//		if(index >= this.interceptors.size()) {
//			a.execute();
//		}else {
//			
//			this.interceptors.get(index).intercept(this);
//		}
		
		if (interceptors.hasNext()) {
			interceptors.next().intercept(this);
		} else {
			a.execute();//调用action的execute方法
		}
	}
}
