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

使用set简化下面代码（下面不用重复写#parameters.name[0]）：<s:set var="name" value="#parameters.name[0]"></s:set>
<br/>

<s:if test="#name == null">null</s:if>
<s:elseif test="#name == 'admin'">admin</s:elseif><!--因为参数可以传同名,所以这里是一个集合-->
<s:else>other</s:else>
<s:debug></s:debug>
</body>
</html>