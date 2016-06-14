<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>
	<h1>自动类型转换</h1>
	<form action="test" method="post">
		name:<input name="name" type="text" value="name"/><br />
		age:<input name="password" type="text" value="18"/><br />
		birthday:<input name="birthday" type="text" value="1992-02-21 22:22:22"/><br />		
		<input type="submit" value="sumit"/>
	</form>
</body>
</html>