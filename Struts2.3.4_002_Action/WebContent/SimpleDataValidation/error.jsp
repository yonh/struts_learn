<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>input data</title>
</head>
<body>
	error<br />
	<!-- 这个是取出我们在action数据校验时写进的error,默认已经指定了如何展现 -->
	<s:fielderror fieldName="data" />
	<br />
	
	<!-- 这个是取出Value Stack Contents里面的errors的	data(我们添加的
		addFieldError中fieldName为data)因为这是一个数组,所以用[0]取出第一个 -->
	<s:property value="errors.data[0]" />
	
	<s:debug></s:debug>
</body>
</html>