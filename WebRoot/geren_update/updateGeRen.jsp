<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateGeRen.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="../css.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
   <form method="get" action="gereninsert_servlet">&nbsp;&nbsp;&nbsp;&nbsp; 
			<strong>个人资料修改 
			</strong><br>
			<p></p>
			<table width="463" border="" height="499">
				<tbody>
					<tr>
						<td>
							&nbsp;个人账号
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="ACCNUM"
								value="${sessionScope.geren.ACCNUM}" readonly>
							<br>

						</td>
					</tr>
					<tr>
						<td>
							&nbsp;姓名
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="NAME"
								value="${sessionScope.geren.NAME}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;证件类型
						</td>
						<td>
							&nbsp;
							<br>
							<select size="4" name="KIND" value="${sessionScope.geren.KIND}">
								<option value="01">
									身份证
								</option>
								<option value="02">
									军官证
								</option>
								<option value="03">
									护照
								</option>
								<option value="04">
									其他
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>&nbsp;证件号码
							<br>
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="NUMBER"
								value="${sessionScope.geren.NUMBER}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位账号
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITACCNUM"
								value="${sessionScope.geren.UNITACCNUM }">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位名称
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITACCNAME"
								value="${sessionScope.geren.UNITACCNAME}">
						</td>
					</tr>
					
				</tbody>
			</table>
		
	<input type="submit" value="提交" name="button1">
		</form>
  </body>
</html>
