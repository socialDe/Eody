<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<header>
<c:choose>
		<c:when test="${loginuser == null}">
			<h3> Login X </h3>
		</c:when>
		<c:otherwise>
			${loginuser.nickname}님
		</c:otherwise>
	</c:choose>
</header>
<h1>login ok</h1>
</body>
</html>