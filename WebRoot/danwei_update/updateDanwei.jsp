<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	request.setCharacterEncoding("GBK");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'updateDanwei.jsp' starting page</title>

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
		<form method="get" action="updateServlet">&nbsp;&nbsp;&nbsp;&nbsp; 
			<strong>单位资料修改 
			</strong><br>
			<p></p>
			<table width="463" border="" height="499">
				<tbody>
					<tr>
						<td>
							&nbsp;单位账号
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITACCNUM"
								value="${sessionScope.aa.UNITACCNUM}" readonly>
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
								value="${sessionScope.aa.UNITACCNAME}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位地址
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITADDR"
								value="${sessionScope.aa.UNITACCNAME}">
						</td>
					</tr>
					<tr>
						<td>&nbsp;组织机构代码 
							<br>
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="ORGCODE"
								value="${sessionScope.aa.ORGCODE}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位类别
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITCHAR"
								value="${sessionScope.aa.UNITCHAR}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;企业类型
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITKIND"
								value="${sessionScope.aa.UNITKIND}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;发薪日期
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="SALARYDATE"
								value="${sessionScope.aa.SALARYDATE}" />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;联系电话
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITPHONE"
								value="${sessionScope.aa.UNITPHONE}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位经办人
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITLINKMAN"
								value="${sessionScope.aa.UNITLINKMAN}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;经办人身份证号码
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITAGENTPAPNO"
								value="${sessionScope.aa.UNITAGENTPAPNO}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;备注
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="REMARK"
								value="${sessionScope.aa.REMARK}">
						</td>
					</tr>
				</tbody>
			</table>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="提交">

		</form>
	</body>
</html>
