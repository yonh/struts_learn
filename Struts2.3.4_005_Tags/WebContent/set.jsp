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
<h2>Set</h2>
设定user(默认会放到request,actionContext里)<s:set var="user" value="user" /><br /><!-- 范围在文档查 -->
从request中取出user:<s:property value="#request.user" /><br />
从actionContext中取出user:<s:property value="#user"/><br />
设定范围:page<s:set var="pwd" value="pwd" scope="page"></s:set><br />
从相应范围取值:<%= pageContext.getAttribute("pwd") %><br />
设定范围:session<s:set var="test" value="pwd" scope="session"></s:set><br />
从相应范围取值<s:property value="#session.test"></s:property>
<s:debug></s:debug>
</body>
</html>