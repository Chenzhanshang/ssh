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
	.t{background: #bbbbbb;}
	p{text-align:center;}
</style>
<meta charset="UTF-8">
<title>注册</title>
<script type="text/javascript">
		function check(from)
		{
			with(from){
				if(id.value == ""){
					alert("用户名不为空！")
					return false;
				}
				if(pwd.value == ""){
					alert("密码不为空！")
				return false;
				}
			}
		}
	</script>
</head>
<body>
	<font color="red"><s:fielderror/> </font>
	<br>
	<p align="center"><font color="red">${sessionScope.InterceptorError}</font></p>
	<%session.removeAttribute("InterceptorError");%>
	<p>用户注册页面！</p>
	<hr>
	<br>
	<form action="${pageContext.request.contextPath}/UserAction_register"  onsubmit="return check(this);" method="post">
	<table>
		<tr>
			<td class="t">用户名：</td>
			<td><input type="text" name="id"/></td>
		</tr>
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
			<td colspan="2" align="center"><input type="submit" value="注册">&nbsp;&nbsp;<input type="reset" value="重置"></td>
		</tr>
	</table>
	</form>
	<p><font color="red">${requestScope.error}</font></p>
</body>
</html>