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
	<h2>������ͨ���ԣ�����</h2>
	<ul>
		<li>����ValueStack�е���ͨ����:<s:property value="str"/></li>
		<li>����ValueStack�ж������ͨ����:<s:property value="user.userName"/></li>
		<li>����ValueStack�ж���Ķ������ͨ����:<s:property value="user.u.name"/></li>
		<li>����ValueStack�ж������ͨ����:<s:property value="user.toString()"/></li>
		<li>����action�е���ͨ����:<s:property value="m()"/></li>
	</ul>
	
	<h2>���ʾ�̬���ԣ�����</h2>
	<ul>
		<li>����Class_static�еľ�̬����str:<s:property value="@Class_static@str" /></li>
		<li>����Class_static�еľ�̬����s():<s:property value="@Class_static@s()" /></li>
		<li>����Math��ľ�̬����max(2,3):<s:property value="@@max(2,3)" /></li>
		<li>������Ĺ��췽��:<s:property value="new User()"/></li>
	</ul>
	
	
	<h2>���ʼ���</h2>
	<ul>
		<li>����List:<s:property value="users"/></li>
		<li>����List��ĳ��Ԫ��:<s:property value="users[1]"/></li>
		<li>����List��Ԫ��ĳ�����Եļ���:<s:property value="users.{age}"/></li>
		<li>����List��Ԫ��ĳ�����Եļ����е��ض�ֵ:<s:property value="users.{age}[0]"/> | <s:property value="users[0].age"/></li>
		<li>����Set:<s:property value="dogs"/></li>
		<li>����Set��ĳ��Ԫ��:<s:property value="dogs[1]"/></li><!-- ����ʽ -->
		<li>����Map:<s:property value="dogMap"/></li>
		<li>����Map��ĳ��Ԫ��:<s:property value="dogMap.dog101"/> | <s:property value="dogMap['dog101']"/> | <s:property value="dogMap[\"dog101\"]"/></li>
		<li>����Map�����е�key:<s:property value="dogMap.keys"/></li>
		<li>����Map�����е�value:<s:property value="dogMap.values"/></li>
		<li>���������Ĵ�С��<s:property value="dogMap.size()"/> | <s:property value="dogMap.size"/> </li>
	</ul>
	
	<h2>ͶӰ�����ˣ�</h2>	
	<ul>
										<!--����Ļ�ȡ��users��ÿһ��user���бȽ�,��ʱthis������ǵ�ǰuser-->
		<li>ͶӰ(ȡ��ĳ��ֵ)��<s:property value="users.{?#this.age==1}[0]"/></li><!-- ����this.age==1���ó�users��user��age=1�Ķ���,��˻�õ�һ������ -->
		<li>ͶӰ��(ȡ���������Ŀ�ͷ��һ��)<s:property value="users.{^#this.age>1}.{age}"/></li><!--ȡ����ǰuser��age>1�ļ��ϵ�age�ļ���,ȡ��ͷ�� -->
		<li>ͶӰ��(�������෴)<s:property value="users.{$#this.age>1}.{age}"/></li><!--ȡ����ǰuser��age>1�ļ��ϵ�age�ļ���,ȡ��β�� -->
		<li>ͶӰ��(�жϷ��������ļ����Ƿ�Ϊnull)<s:property value="users.{$#this.age>1}.{age} == null"/></li><!--ȡ����ǰuser��age>1�ļ��ϵ�age�ļ����Ƿ�=null-->
	</ul>
	ͨ��������0����,[0]:<s:property value="[0]"/><!-- ��ʾValueStack�д������浽�������object -->
	<s:debug></s:debug>
</body>
</html>