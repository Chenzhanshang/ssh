<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改用户信息</title>
</head>
<body>
	<p align="center">请填写用户<%=request.getParameter("oldId")%>的新信息</p>
	<% session.setAttribute("oldId", request.getParameter("oldId")); %>
	<form action="${pageContext.request.contextPath}/UserAction_update">
		<table align="center">
			<tr>
				<td class="t">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
				<td><input type="password" name="pwd"/></td>
			</tr>
			
			<tr>
				<td class="t">年&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
				<td><input type="text" name="age"/></td>
			</tr>
			<tr>
				<td class="t">邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
			<!-- 格式:YYYY-MM-DD -->
				<td class="t">生&nbsp;&nbsp;&nbsp;&nbsp;日：</td>
				<td><input type="text" name="birthday"/></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit" value="提交">&nbsp;&nbsp;<input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>