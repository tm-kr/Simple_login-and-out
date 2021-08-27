<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/css/style.css" />
</head>
<body>
<div class="wrapper2">
	<h2 class="mt-5 mb-5"><b>Login Example</b></h2>
	<form method="post" action="${pageContext.request.contextPath}/login">
		<input type="text" class="form-control" placeholder="아이디" name="id" ><br>
		<input type="password" class="form-control mb-5" placeholder="비밀번호" name="pass">
		<div>
		<button type="submit" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/login'">로그인</button>
	</div>
	</form>
</div>

</body>
</html>