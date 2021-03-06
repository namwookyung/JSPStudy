<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
<title>JSTL sql 라이브러리 사용 예제</title>
</head>
<body>

<sql:setDataSource
		var="conn"
		user="root"
		password="yt1234"
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/managersystem?useUnicode=true&characterEncoding=UTF8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Seoul"
/>
<sql:update dataSource="${conn }">
	insert into test(num, name) values (1, '홍길동')
</sql:update>
<sql:update dataSource="${conn }">
	insert into test (num, name) values (2, '조준동')
</sql:update>
<sql:update dataSource="${conn }">
	insert into test (num, name) values (3, '홍길동')
</sql:update>
<sql:update dataSource="${conn }">
	insert into test (num, name) values (4, '홍길순')
</sql:update>

<sql:query var="rs" dataSource="${conn }">
	select * from test where name=?
	<sql:param>홍길동</sql:param>
</sql:query>

<c:forEach var="data" items="${rs.rows }">
	<c:out value="${data['num']}"/>
	<c:out value="${data['name']}"/>
	<br>
</c:forEach>

</body>
</html>