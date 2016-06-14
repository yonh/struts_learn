<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String currentPath = request.getScheme() + "://" + request.getServerName() + 
	":" + request.getServerPort() + request.getRequestURI() + " |" + request.getPathInfo();
	
%>
<br />
<%=currentPath %>
<br />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="getText('title')" /></title>
</head>
<body>
	<s:property value="getText('message')" /><br />
	<a href="<%=currentPath%>?request_locale=en_US">english</a>
	<a href="<%=currentPath%>?request_locale=zh_CN">chinese</a>
</body>
</html>
