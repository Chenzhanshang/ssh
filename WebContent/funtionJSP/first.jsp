<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p align="center">欢迎用户 ${user.id} 登录！</p>
	<p align="center">你上传的照片为:</p>
	<img style="text-align: center" alt="未上传照片" src="../photo/${image}">
</body>
</html>