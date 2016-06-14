
public class SecondInterceptor implements Interceptor {

	public void intercept(ActionInvocation invocation) {
		System.out.println("intercept 2 start");
		invocation.invoke();
		System.out.println("intercept 2 end");
	}

}
