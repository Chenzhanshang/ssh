<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table,tr,td {text-align:center;
				margin:0 auto;
				border:1px solid;
				}
	p{text-align:center;}
</style>
<meta charset="UTF-8">
<title>欢迎</title>
</head>
<body>
	<p>用户 ${user.id} 你的信息如下</p>
	<table>
		<tr><td>用户名</td><td>年龄</td><td>邮箱</td><td>生日</td></tr>
		<tr>
			<td><s:property value="#session.user.id"/></td>
			<td><s:property value="#session.user.age"/></td>
			<td><s:property value="#session.user.email"/></td>
			<td><s:property value="#session.user.birthday"/></td>
		</tr>
	</table>
</body>
</html>