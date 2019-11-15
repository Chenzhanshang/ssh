<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
</head>
<body>
<p align="center">用户${user.id},请输入你的新密码</p>
	<% session.setAttribute("user", session.getAttribute("user"));
	System.out.println(session.getAttribute("user"));
	%>
	<form action="${pageContext.request.contextPath}/UserAction_updatePassword">
		<table align="center">
			<tr>
				<td>
					密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="text" name="password1"/>
				</td>
			</tr>
			<tr>
				<td>
					确认密码：<input type="text" name="pwd"/>
				</td>
			</tr>
			<tr>
				<td>
					<p align="center"><input type="submit" value="提交"/><p>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>