<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>tags</title>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>" />
 </head>
<body>
<a href="property">property</a><br />
<a href="set">set</a><br />
<a href="bean.jsp">bean</a><br />
<a href="include.jsp">include</a><br />

<ul>
<li><a href="if.jsp">if.jsp</a></li>
<li><a href="if.jsp?name=admin">if.jsp?name=admin</a></li>
<li><a href="if.jsp?name=other">if.jsp?name=other</a></li>
</ul>

<a href="iterator.jsp">iterator</a><br />
<a href="subset">subset</a>
<ul>

<li><a href="ui!ui1">ui1</a></li>
<li><a href="ui!ui2">ui2</a></li>
<li><a href="ui!ui3">ui3</a></li>
</ul>
</body>
</html>