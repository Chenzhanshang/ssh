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
	
	.surfaceThree {
    position: relative;
    height: 25px;
    width: 165px;
    background: #bbbbbb;
    border-radius: 7px;
    text-align: center;
    line-height: 30px;
    font-size: 14px;
    color: black;
	}

	.surfaceThree input {
    position: absolute;
    top: 5px;
    right: -110px;
    color: #fff; 
    height: 30px;
    opacity: 0;
	}
</style>

<meta charset="UTF-8">
<title>登录</title>
</head>
<body>
	<p>
	<a href="UserAction_changeLanguage?request_locale=zh_CN"><s:text name="chinese"/></a>  
	&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="UserAction_changeLanguage?request_locale=en_US"><s:text name="english"/></a>
	</p>
	<font color="red"><s:fielderror/> </font>
	<br>
	<p align="center"><font color="red">${RegisterError}</font></p>
	<p align="center"><s:text name="head"/></p>
	<hr>
	<br>
	<form action="${pageContext.request.contextPath}/UserAction_login"  method="post" enctype="multipart/form-data">
	<table align="center" border="1">
		<tr>
			<td bgcolor="#bbbbbb"><s:text name="name"/>：</td>
			<td><input type="text" name="id"/></td>
		</tr>
		<tr>
			<td bgcolor="#bbbbbb">&nbsp;&nbsp;<s:text name="password"/>：&nbsp;&nbsp;</td>
			<td><input type="password" name="pwd"/></td>
		</tr>
		<tr>
			<td bgcolor="#bbbbbb">&nbsp;&nbsp;<s:text name="photo"/>：&nbsp;&nbsp;</td>
			<td><div class="surfaceThree"><s:text name="seleteFile"/>（<s:text name="photo"/>）<input type="file" name="photo" /></div></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit"  value="<s:text name="login"/>"> &nbsp;&nbsp;<input type="reset" value="<s:text name="reset"/>"></td>
		</tr>
		</table>
	</form>
	<p align="center"><a href="register.jsp">没有账号？去注册</a></p>
	<p align="center"><font color="red">${requestScope.error}</font></p>
</body>
</html>