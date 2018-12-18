<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'danweiquery_out.jsp' starting page</title>
    
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
  
  <body><strong>&nbsp;&nbsp;&nbsp; 单位信息</strong><br><br><table width="463" border="" height="499">
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
								value="${sessionScope.aa.UNITACCNAME}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位地址
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITADDR"
								value="${sessionScope.aa.UNITACCNAME}" readonly>
						</td>
					</tr>
					<tr>
						<td>&nbsp;组织机构代码 
							<br>
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="ORGCODE"
								value="${sessionScope.aa.ORGCODE}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位类别
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITCHAR"
								value="${sessionScope.aa.UNITCHAR}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;企业类型
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITKIND"
								value="${sessionScope.aa.UNITKIND}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;发薪日期
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="SALARYDATE"
								value="${sessionScope.aa.SALARYDATE}" readonly/>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;联系电话
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITPHONE"
								value="${sessionScope.aa.UNITPHONE}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;单位经办人
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITLINKMAN"
								value="${sessionScope.aa.UNITLINKMAN}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;经办人身份证号码
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="UNITAGENTPAPNO"
								value="${sessionScope.aa.UNITAGENTPAPNO}" readonly>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;备注
						</td>
						<td>
							&nbsp;
							<input type="text" size="40" name="REMARK"
								value="${sessionScope.aa.REMARK}" readonly>
						</td>
					</tr>
				</tbody>
			</table>
			<a href="Main.jsp">返回主页</a>
  </body>
</html>
