<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>path</title>
  </head>
  
  <body>
  	path.jsp<br /><br />
  	通过相对路径："index.jsp"打开:<a href="hello.jsp">hello</a><br />
  	
  	通过绝对路径："request.getContextPath + /index.jsp"打开:<a href="<%= request.getContextPath() %>/hello.jsp">hello</a>
  	
  	<br />
  	<font color="green">
  	或者也可以通过myeclipse自动生成的
  	String path = request.getContextPath(); <br />
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 	通过base标签设置整个页面的链接的webapp部分路径
 	</font>
 	<br /><br />
 	结论:<br />
 	<font color="red">
 		struts2中路径是根据action的路径而不是jsp文件实际路径决定的<br />
 		因此第一个hello打开的实际是和当前action相同路径下的hello.jsp,也就是webapp/path/hello.jsp<br />
 		尽量不用相对路径,改用request.getContextRoot方式来拿到webapp的路径<br />
 		或者使用myeclipse自动生成的base标签设置webapp根路径
 	</font>
  </body>
</html>




