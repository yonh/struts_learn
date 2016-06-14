package valid;

import com.opensymphony.xwork2.ActionSupport;

public class SimpleDataValidation extends ActionSupport {
	private String data;
	
	public String execute() {
		if (data == null || !data.equals("hello")) {
			this.addFieldError("data", "data is not 'hello'");//添加一个错误信息
			return ERROR;
		}
		return SUCCESS;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
}
