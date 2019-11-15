<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<STYLE type=text/css>
TD {
	FONT-SIZE: 15px;
	COLOR: #003366;
	FONT-FAMILY: Verdana
}

B{
	FONT-SIZE: 20px;
}
P {
	FONT-SIZE: 11px;
	COLOR: #003366;
	FONT-FAMILY: Verdana
}

.mainMenu {
	FONT-WEIGHT: bold;
	FONT-SIZE: 20px;
	cursor: pointer;
	COLOR: #000000
}

A.style2:link {
	PADDING-LEFT: 4px;
	COLOR: #0055bb;
	TEXT-DECORATION: none
}

A.style2:visited {
	PADDING-LEFT: 4px;
	COLOR: #0055bb;
	TEXT-DECORATION: none
}

A.style2:hover {
	PADDING-LEFT: 4px;
	COLOR: #ff0000;
	TEXT-DECORATION: none
}

A.active {
	PADDING-LEFT: 4px;
	COLOR: #ff0000;
	TEXT-DECORATION: none
}

.span {
	COLOR: #ff0000;
}
</STYLE>
<SCRIPT language=javascript>
	function MenuDisplay(obj_id) {
		for (var i = 1; i <= 9; i++) {
			var obj = document.getElementById('table_' + i);
			if(obj){
				document.getElementById('table_' + i).style.display = 'none';
				document.getElementById('table_' + i + 'Span').innerText = '＋';
			}
			
		}
		var obj = document.getElementById(obj_id);
		if(obj){
			if (obj.style.display == 'none') {
				obj.style.display = 'block';
				document.getElementById(obj_id + 'Span').innerText = '－';
			} else {
				obj.style.display = 'none';
				document.getElementById(obj_id + 'Span').innerText = '＋';
			}
		}
		
	}
</SCRIPT>
<title>Insert title here</title>
</head>
<BODY>
	<FORM id=form1 name=form1 action=YHMenu.aspx method=post>
		<TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
			<TR>
				<TD width=180 height=35><B>功能菜单</B></TD>
			</TR>
		</TABLE>
			<TABLE cellSpacing=0 cellPadding=3 width=165 align=center border=0>
			<TR>
				<TD class=mainMenu onClick="MenuDisplay('table_1');"><SPAN
					class=span id=table_1Span>＋</SPAN> 普通功能</TD>
			</TR>
			<TR>
				<TD>
					<TABLE id=table_1 style="DISPLAY: none" cellSpacing=0
						cellPadding=2 width=155 align=center border=0>
						<TR>
							<TD class=menuSmall><A class=style2 href="${pageContext.request.contextPath}/funtionJSP/download.jsp" 
								target=main>－ 下载文件</A></TD>
							</TR>
							<TR> 
								<TD class=menuSmall><A class=style2 href="${pageContext.request.contextPath}/funtionJSP/select.jsp"
									target=main>－ 查看个人信息</A></TD>
							</TR>
							<TR>
									<TD class=menuSmall><A class=style2 href="${pageContext.request.contextPath}/UserAction_selectAll"
										target=main>－ 查看所有信息</A></TD>
								</TR>
					</TABLE>
				</TD>
			</TR>
			<TR>
				<TD class=mainMenu onClick="MenuDisplay('table_2');"><SPAN
					class=span id=table_2Span>＋</SPAN> 账户管理</TD>
			</TR>
			<TR>
				<TD>
					<TABLE id=table_2 style="DISPLAY: none" cellSpacing=0
						cellPadding=2 width=155 align=center border=0>
						<TR>
							<TD class=menuSmall><A class=style2 href="${pageContext.request.contextPath}/funtionJSP/updatePassword.jsp"
								target=main>－ 修改密码</A></TD>
							
						</TR>	
						<TR>
							<TD class=menuSmall><A class=style2 href="${pageContext.request.contextPath}/funtionJSP/updateMyMessage.jsp"
								target=main>－ 修改个人信息</A></TD>
							
						</TR>	
					</TABLE>
				</TD>
			</TR>	
		</TABLE>

	</FORM>
</BODY>
</HTML>