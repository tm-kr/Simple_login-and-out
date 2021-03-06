<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/css/style.css" />
</head>
<body>
<div class="wrapper">
	<h2><b>Login & Join Example</b></h2>
	<h6 style="margin-bottom: 8%"><b>by taemin</b></h6>
	<c:if test="${empty sessionScope.id }">
		<div>
			<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/loginForm'">로그인</button>
			<button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/joinForm'">회원가입</button>
		</div>
	</c:if>
	<c:if test="${not empty sessionScope.id }">
		<div>
			<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/logout'">로그아웃</button>
		</div>	
	</c:if>
</div>

</body>
</html>