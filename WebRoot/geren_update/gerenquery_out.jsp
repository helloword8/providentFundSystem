<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gerenquery_out.jsp' starting page</title>
    
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
    <strong>&nbsp;&nbsp;&nbsp; 个人信息</strong><br><br><table width="463" border="" height="499">
				<tbody>
					<tr>
						<td>
							&nbsp;单位账号
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITACCNUM"
								value="${sessionScope.grk.UNITACCNUM}" readonly>
							<br>

						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位名称
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITACCNAME"
								value="${sessionScope.grk.UNITACCNAME}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;姓名
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="NAME"
								value="${sessionScope.grk.NAME}" readonly>
						</td>
					</tr>
					<tr>
						<td>&nbsp;证件类型
							<br>
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="KIND"
								value="${sessionScope.grk.KIND}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;证件号码
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="NUMBER"
								value="${sessionScope.grk.NUMBER}" readonly>
						</td>
					</tr>
					
				</tbody>
			</table>
			<a href="Main.jsp">返回主页</a>
  </body>
</html>
