<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
</head>
<body>
	<h2>访问普通属性，方法</h2>
	<ul>
		<li>访问ValueStack中的普通属性:<s:property value="str"/></li>
		<li>访问ValueStack中对象的普通属性:<s:property value="user.userName"/></li>
		<li>访问ValueStack中对象的对象的普通属性:<s:property value="user.u.name"/></li>
		<li>访问ValueStack中对象的普通方法:<s:property value="user.toString()"/></li>
		<li>访问action中的普通方法:<s:property value="m()"/></li>
	</ul>
	
	<h2>访问静态属性，方法</h2>
	<ul>
		<li>访问Class_static中的静态属性str:<s:property value="@Class_static@str" /></li>
		<li>访问Class_static中的静态方法s():<s:property value="@Class_static@s()" /></li>
		<li>访问Math类的静态方法max(2,3):<s:property value="@@max(2,3)" /></li>
		<li>访问类的构造方法:<s:property value="new User()"/></li>
	</ul>
	
	
	<h2>访问集合</h2>
	<ul>
		<li>访问List:<s:property value="users"/></li>
		<li>访问List中某个元素:<s:property value="users[1]"/></li>
		<li>访问List中元素某个属性的集合:<s:property value="users.{age}"/></li>
		<li>访问List中元素某个属性的集合中的特定值:<s:property value="users.{age}[0]"/> | <s:property value="users[0].age"/></li>
		<li>访问Set:<s:property value="dogs"/></li>
		<li>访问Set中某个元素:<s:property value="dogs[1]"/></li><!-- 错误方式 -->
		<li>访问Map:<s:property value="dogMap"/></li>
		<li>访问Map中某个元素:<s:property value="dogMap.dog101"/> | <s:property value="dogMap['dog101']"/> | <s:property value="dogMap[\"dog101\"]"/></li>
		<li>访问Map中所有的key:<s:property value="dogMap.keys"/></li>
		<li>访问Map中所有的value:<s:property value="dogMap.values"/></li>
		<li>访问容器的大小：<s:property value="dogMap.size()"/> | <s:property value="dogMap.size"/> </li>
	</ul>
	
	<h2>投影（过滤）</h2>	
	<ul>
										<!--这里的会取出users里每一个user进行比较,此时this代表的是当前user-->
		<li>投影(取出某个值)：<s:property value="users.{?#this.age==1}[0]"/></li><!-- 这里this.age==1会拿出users中user的age=1的对象,因此会得到一个集合 -->
		<li>投影：(取符合条件的开头第一个)<s:property value="users.{^#this.age>1}.{age}"/></li><!--取出当前user的age>1的集合的age的集合,取开头的 -->
		<li>投影：(与上面相反)<s:property value="users.{$#this.age>1}.{age}"/></li><!--取出当前user的age>1的集合的age的集合,取结尾的 -->
		<li>投影：(判断符合条件的集合是否为null)<s:property value="users.{$#this.age>1}.{age} == null"/></li><!--取出当前user的age>1的集合的age的集合是否=null-->
	</ul>
	通过中括号0访问,[0]:<s:property value="[0]"/><!-- 表示ValueStack中从最上面到最下面的object -->
	<s:debug></s:debug>
</body>
</html>