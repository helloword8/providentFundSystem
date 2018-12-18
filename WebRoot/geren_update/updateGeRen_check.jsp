<%@ page language="java" import="java.util.*" pageEncoding="Gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateGeRen_check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="../pink.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <form method="get" action="gerenupdate_check_Servlet">
			<p>
				<br>
			</p>
			<p align="center">
				&nbsp;&nbsp;&nbsp;
				<strong> 个人资料修改</strong>
				<br>
			</p><div align="center"> 
			</div><p align="center">
				&nbsp;&nbsp;&nbsp; 个人账号
				<input type="text" size="40" name="a">
			</p><div align="center"> 
			</div><p align="center">
				&nbsp; &nbsp; &nbsp; &nbsp;
				<input type="submit" value="提交"name="button1">
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
			</p>
			<p>
				&nbsp;
			</p>
		</form>
  </body>
</html>
