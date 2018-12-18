<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'GeRen_fir.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body >
    <form method="get"  name="aa" action="GeRen_fir_servlet"><div align="center"> 
			</div><p align="center">
				&nbsp;
				<strong>&nbsp;&nbsp; 输入单位账号：</strong>
			</p><div align="center"> 
			</div><p align="center">
				&nbsp; &nbsp;
				<input type="text" name="a">
			</p><div align="center"> 
			</div><p align="center">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="查询" name="button1">
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
