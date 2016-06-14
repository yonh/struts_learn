import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;


public class Del extends ActionSupport {
	
	public String del() throws SQLException {
		Test.testDel();
		return SUCCESS;
	}
}
