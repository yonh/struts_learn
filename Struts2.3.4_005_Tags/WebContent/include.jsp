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
包含英文html:<s:include value="/en.html"></s:include><br />
包含中文html:<s:include value="/cn.html"></s:include><br />
定义变量incPath="/en.html"<s:set var="incPath" value="'/en.html'"></s:set><br />
使用%{}引入文件:%{}把中间内容当做ognl来处理<s:include value="%{#incPath}"></s:include>
<s:debug></s:debug>
</body>
</html>