<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" name="f" method="post">
	name:<input type="text" name="name" />
	<input type="button" value="access1.jsp" onclick="javascript:document.f.action='access1';document.f.submit();"/>
	<input type="button" value="access2.jsp" onclick="javascript:document.f.action='access2';document.f.submit();"/>
	<input type="button" value="access3.jsp" onclick="javascript:document.f.action='access3';document.f.submit();"/>
	<input type="button" value="access4.jsp" onclick="javascript:document.f.action='access4';document.f.submit();"/>
</form>
</body>
</html>