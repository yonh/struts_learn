<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>access web element</title>
</head>
<body>
	<s:property value="#request.r" /> | <%= request.getAttribute("r") %><br />
	<s:property value="#session.s" /> | <%= session.getAttribute("s") %><br />
	<s:property value="#application.a" /> | <%= application.getAttribute("a") %><br />
	<s:debug></s:debug>

</body>
</html>