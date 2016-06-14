
public class FirstInterceptor implements Interceptor {

	public void intercept(ActionInvocation invocation) {
		System.out.println("intercept 1 start");
		invocation.invoke();
		System.out.println("intercept 1 end");
	}

}
