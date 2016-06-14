<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Iterator" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>property</title>
</head>
<body>


<!-- s: List basic -->
<s:subset source="myList">
   <s:iterator>
      <s:property />
   </s:iterator>
</s:subset>
<br />

<!-- B: 取3个 -->
<s:subset source="myList" count="3">
  <s:iterator>
      <s:property />
  </s:iterator>
</s:subset>
<br />

<!--  C: 从下标为3开始取 -->
<s:subset source="myList" count="13" start="3">
   <s:iterator>
     <s:property />
   </s:iterator>
</s:subset>
<br />

<!--  D: 从下标为3开始取，取13个-->
     <s:subset var="mySubset" source="myList" count="13" start="3" />
     <%
         Iterator i = (Iterator) pageContext.getAttribute("mySubset");
         while(i.hasNext()) {
     %>
     <%=i.next() %>
     <%  } %>
<br />
<!--  D: List with Decider -->
    <s:subset source="tmp" decider="myDecider">
           <s:iterator>
                <s:property />
           </s:iterator>
    </s:subset>
 <%-- --%>


</body>
</html>