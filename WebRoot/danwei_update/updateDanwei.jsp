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
			<strong>��λ�����޸� 
			</strong><br>
			<p></p>
			<table width="463" border="" height="499">
				<tbody>
					<tr>
						<td>
							&nbsp;��λ�˺�
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
							&nbsp;��λ����
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITACCNAME"
								value="${sessionScope.aa.UNITACCNAME}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��λ��ַ
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITADDR"
								value="${sessionScope.aa.UNITACCNAME}">
						</td>
					</tr>
					<tr>
						<td>&nbsp;��֯�������� 
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
							&nbsp;��λ���
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITCHAR"
								value="${sessionScope.aa.UNITCHAR}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��ҵ����
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITKIND"
								value="${sessionScope.aa.UNITKIND}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��н����
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="SALARYDATE"
								value="${sessionScope.aa.SALARYDATE}" />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��ϵ�绰
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITPHONE"
								value="${sessionScope.aa.UNITPHONE}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��λ������
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITLINKMAN"
								value="${sessionScope.aa.UNITLINKMAN}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;���������֤����
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITAGENTPAPNO"
								value="${sessionScope.aa.UNITAGENTPAPNO}">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��ע
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
			<input type="submit" value="�ύ">

		</form>
	</body>
</html>
