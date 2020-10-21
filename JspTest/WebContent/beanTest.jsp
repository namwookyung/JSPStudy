<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="beantest" class="jspTest.BeanTest" scope="page"/>
<%
	//jspTest.BeanTest beantest = new jspTest.BeanTest();
	beantest.setName("이순신");
%>
<jsp:setProperty property="name" name="beantest" value="유관순"/>
<html>
<head>
<title>JavaBean Test</title>
</head>
<body>
	<b>자바빈 사용 예제</b>
	<h3><%=beantest.getName() %></h3>
	<h3><jsp:getProperty property="name" name="beantest"/></h3>
</body>
</html>