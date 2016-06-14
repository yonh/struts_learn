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
取value stack中的user:<s:property value="user" /><br />
取值为字符串而不是ognl表达式:<s:property value="'String'" /><br />
设定默认值(取不到值时取默认值):<s:property value="admin" default="管理员" /><br />
是否将html字符解析为字符串（默认true，<hr />会原封不动的输出，而不是一个横线）:<s:property value="'<hr />'" escape="false" />
</body>
</html>