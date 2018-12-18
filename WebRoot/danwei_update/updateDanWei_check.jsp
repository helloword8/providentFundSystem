<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'updateDanWei_check.jsp' starting page</title>

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
		<form method="get" action="update_check_Servlet">
			<p>
				<br>
			</p>
			<p>
				&nbsp;&nbsp;&nbsp;
				<strong> 单位资料修改</strong>
				<br>
			</p>
			<p>
				&nbsp;&nbsp;&nbsp; 单位账号
				<input type="text" size="40" name="a">
			</p>
			<p>
				&nbsp; &nbsp; &nbsp; &nbsp;
				<input type="submit" name="button1">
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
