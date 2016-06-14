import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.ResourceBundle;


public class Test {
	public static void main(String[] args) {
		//ResourceBundle res = ResourceBundle.getBundle("app", Locale.US);
		ResourceBundle res = ResourceBundle.getBundle("app", Locale.CHINA);
		String s = res.getString("message");//取出message的内容
		
		//因为java将utf-8的资源文件的内容的编码改为了iso-8859-1,因此将其转会utf-8
		try {
			s = new String(s.getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		System.out.println(s);
	}
}
