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
</style>
<meta charset="UTF-8">
<title>信息显示</title>
</head>
<body>
<br><br>
	<table>
	<caption>用户信息表</caption>
		<tr><td>用户名</td><td>密码</td><td>年龄</td><td>邮箱</td><td>生日</td></tr>
		<s:iterator value="list">
		<tr>
			<td><s:property value="id"></s:property></td>
			<td><s:property value="pwd"/></td>
			<td><s:property value="age"/></td>
			<td><s:property value="email"/></td>
			<td><s:property value="birthday"/></td>
		</tr>
		</s:iterator>
	</table>
</body>
</html>