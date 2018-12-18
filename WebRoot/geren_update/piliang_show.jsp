<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'piliang_show..jsp' starting page</title>

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
		<form action="piliang_insert_servlet">
			&nbsp;
			<strong> 批量导入</strong>
			<table border=1>
				<tbody>
					<tr>
						<th>
							姓名
						</th>
						<th>
							证件类型
						</th>
						<th>
							证件号码
						</th>
						<th>
							缴存基数
						</th>
					</tr>
					<c:forEach items="${piliang}" var="pa">
						<tr>
							<td>
								<c:out value="${pa.NAME}" default="no value" />
							</td>
							<td>
								${pa.KIND}
							</td>
							<td>
								${pa.NUMBER}
							</td>
							<td>
								${pa.BASENUMBER}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="提交" />
		</form>
	</body>
</html>
