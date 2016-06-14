package converter;

import java.awt.Point;
import java.lang.reflect.Member;
import java.util.Map;

import com.opensymphony.xwork2.conversion.TypeConverter;
import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;

//public class MyConverter implements TypeConverter {
//
//	@Override
//	public Object convertValue(Map<String, Object> context, Object target,
//			Member member, String propertyName, Object value, Class toType) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//}
public class PointConverter extends DefaultTypeConverter {

	@Override
	public Object convertValue(Object value, Class toType) {
		if (toType == Point.class) {
			Point p = new Point();
			String[] strs = (String[])value;
			String[] xy = strs[0].split(",");
			p.x = Integer.parseInt(xy[0]);
			p.y = Integer.parseInt(xy[1]);
			return p;
		} else if (toType == String.class) {
			return value.toString();
		}
		
		return super.convertValue(value, toType);
	}
	
}