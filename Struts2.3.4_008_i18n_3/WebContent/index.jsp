<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>


<%
String path =  request.getRequestURI();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="getText('title')" /></title>
</head>
<body>
	<a href="javascript:changeLanguage('en_US')">english</a> &nbsp;
	<a href="javascript:changeLanguage('zh_CN')">中文</a><br />
	<a href="i18n?request_locale=en_US&url=index">english2</a> &nbsp;
	<a href="i18n?request_locale=zh_CN&url=index">中文2</a><br />
	
	<a href="i18n?request_locale=cn_US&url=<%=path%>">english3</a>&nbsp;
	<a href="i18n?request_locale=zh_CN&url=<%=path%>">中文3</a><br />
	<s:property value="getText('message')" />
	
	

<script type="text/javascript" src="ajax.js"></script>
</body>
</html>


