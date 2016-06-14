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
遍历集合:
<s:iterator value="{1,2,3}">
	<s:property /> 
</s:iterator>
<hr />
通过for each方式遍历:
<s:iterator value="{'aaa', 'bbb', 'ccc'}" var="x">
	<s:property value="#x.toUpperCase()"/>
</s:iterator>
<hr />
使用status属性<br/>
<s:iterator value="{'a','b','c'}" status="s">
	<s:property/>
	遍历过的元素总数:<s:property value="#s.count"></s:property> 
	当前元素索引:<s:property value="#s.index"></s:property> 
	是偶数吗:<s:property value="#s.even"></s:property> 
	是奇数吗:<s:property value="#s.odd"></s:property> 
	是第一个元素吗:<s:property value="#s.first"></s:property> 
	是最后一个元素吗:<s:property value="#s.last"></s:property> 
	<br />
</s:iterator>
<hr />
定义Map并遍历:
<s:iterator value="#{1:'a', 2:'b', 3:'c'}" >
	"<s:property value="key"/>:<s:property value="value"/>"&nbsp;&nbsp;&nbsp;
</s:iterator>
<hr />
通过变量访问key,value:
<s:iterator value="#{1:'a', 2:'b', 3:'c'}" var="x">
	KEY:<s:property value="#x.key"/>,VALUE:<s:property value="#x.value"/>&nbsp;&nbsp;&nbsp;
</s:iterator>
</body>
</html>