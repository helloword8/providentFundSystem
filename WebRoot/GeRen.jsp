<%@ page language="java" import="java.util.*" pageEncoding="gB2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'GeRen.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<form method="get" action="gerenkaihu_servlet" name="aa"><div align="center">&nbsp;&nbsp;&nbsp;  
			<strong>���˿��� </strong> 
			</div><table width="288" border="" height="281" align="center">
				<tbody>
					<tr>
						<td>
							&nbsp;��λ�˺�
						</td>
						<td>
							&nbsp;
							<input type="text" name="UNITACCNUM"
								value=${sessionScope.grk.UNITACCNUM } readonly />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��λ����
						</td>
						<td>
							&nbsp;
							<input type="text" name="UNITACCNAME"
								value=${sessionScope.grk.UNITACCNAME} />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;��λ����
						</td>
						<td>
							&nbsp;
							<input type="text" name="UNITPROP"
								value=${sessionScope.grk.UNITPROP} />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;���˱���
						</td>
						<td>
							&nbsp;
							<input type="text" name="INDIPROP"
								value=${sessionScope.grk.PERPROP} />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp; �� ��
						</td>
						<td>
							&nbsp;
							<input type="text" name="NAME" />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;֤������
						</td>
						<td>
							<br>
							<select size="4" name="KIND">
								<option value="01">
									���֤
								</option>
								<option value="02">
									����֤
								</option>
								<option value="03">
									����
								</option>
								<option value="04">
									����
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;֤������
						</td>
						<td>
							&nbsp;
							<input type="text" name="NUMBER" />
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;�������
						</td>
						<td>
							&nbsp;
							<input type="text" name="BASENUMBER" />
						</td>
					</tr>
				</tbody>
			</table><div align="center"> 
			</div><p align="center">&nbsp;<input type="submit" value="ע��" name="button1"><font color="#000000" size="3"><a href="piliangServlet"> ��������</a></font>
			</p><div align="center"> 
			</div><div align="center"> 
				&nbsp; &nbsp;&nbsp; <font color="r"><a href="piliangServlet"><br></a></font></div><p> 
			</p>
			<br>
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
		&nbsp;
		<br>
		&nbsp;

	</body>
</html>
