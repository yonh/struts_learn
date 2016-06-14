<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>property</title>
</head>
<body>
bean<br />
没有给user1.name赋初始值:<s:bean name="User" var="user1"></s:bean>
<s:property value="#user1"/><br />
有给user2.name赋初始值:
<s:bean name="User" var="user2">
	<s:param name="name" value="'Name'"></s:param>
</s:bean>
<s:property value="#user2"/>
<s:debug></s:debug>
</body>
</html>