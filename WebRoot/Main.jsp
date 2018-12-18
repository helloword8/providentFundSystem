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

		<title>My JSP 'Main.jsp' starting page</title>

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
	<body  ><strong><font size="8">公司业务</font></strong>
		</div><table align="top"> 
			<tbody> 
				<tr> 
					<td>  
						<a href="DanWeiKaiHu.jsp">增加 </a><br></td> 
					<td valign="top"> 
						<a href="danwei_update/danweidelete.jsp">删除</a> 
						<br> 
					</td> 
					<td> 
						<a href="danwei_update/updateDanWei_check.jsp">修改</a> 
					</td> 
					<td valign="top"> 
						<a href="danwei_update/danweiquery_check.jsp">查询</a> 
						<br> 
					</td> 
				</tr> 
			</tbody></table><div align="top"><br> 
			</div><p align="top"><strong> <font size="8">个人业务</font></strong></p><div align="top"> 
			 
			 
			</div><table height="30" width="156" align="top" style="height: 30px;"> 
				<tbody><tr> 
					<td align="top"> 
						<a href="GeRen_fir.jsp">增加</a> 
					</td> 
					<td valign="top" align="center"> 
						<a href="geren_update/gerendelete.jsp">删除</a> 
					</td> 
					<td align="center">  
						<a href="geren_update/updateGeRen_check.jsp">修改</a></td> 
					<td valign="top"><div align="center"> 
						<a href="geren_update/gerenquery_check.jsp">查询</a></div> 
					</td> 
				</tr> 
				 
			</tbody><tbody></tbody> 
		</table>
	
	</body>
</html>
