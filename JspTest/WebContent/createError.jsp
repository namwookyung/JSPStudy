<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorProcessing.jsp"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	if(name == null) {
		throw new NullPointerException();
	}
%>
</body>
</html>