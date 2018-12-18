<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'MyJsp.jsp' starting page</title>

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

	<body><br><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size="5"><strong>  
		单位缴存登记及开户</strong></font><br> 
		</div><form method="get" name="aaa" action="insertServlet">
			<table width="465" border="" bgcolor="" align="center" height="398">
				<tbody>
					<tr>
						<td>&nbsp; 单位名称</td>
						<td> 
<input type="text" name="UNITACCNAME" size="40"></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						单位地址</td>
						<td> 
						<input type="text" name="UNITADDR" size="40"></td>
					</tr>
					<tr>
						<td>&nbsp; 组织机构代码</td>
						<td> 
						<input type="text" name="ORGCODE" size="40"></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						单位类别</td>
						<td>		<select name="UNITCHAR">
					<option value="1">
						企业
					</option>
					<option value="2">
						事业
					</option>
					<option value="3">
						机关
					</option>
					<option value="4">
						团体
					</option>
					<option value="5">
						其他
					</option>

				</select></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						企业类型</td>
						<td> 
							<select name="UNITKIND">
					<option value="110">
						国有经济
					</option>
					<option value="120">
						集体经济
					</option>
					<option value="130">
						股份合作企业
					</option>
					<option value="140">
						联营企业
					</option>
					<option value="150">
						有限责任公司
					</option>
					<option value="160">
						股份有限公司
					</option>
					<option value="170">
						私营企业
					</option>
					<option value="190">
						其他企业
					</option>
					<option value="200">
						港、澳、台商投资企业
					</option>
					<option value="300">
						外商投资企业
					</option>
					<option value="900">
						其他
					</option>
				</select></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						发薪日期</td>
						<td> 
						<input type="text" name="SALARYDATE" size="40"></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						联系电话</td>
						<td> 
							<input type="text" name="UNITPHONE" size="40"></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						单位经办人</td>
						<td> 
						<input type="text" name="UNITLINKMAN" size="40"></td>
					</tr>
					<tr>
						<td>经办人身份证号码</td>
						<td> 
						<input type="text" name="UNITAGENTPAPNO" size="40"></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						单位比例</td>
						<td> 
						<input type="text" name="UNITPROP" size="40"></td>
					</tr>
					<tr>
						<td> 
							&nbsp; 
						个人比例</td>
						<td> 
						<input type="text" name="PERPROP" size="40"></td>
					</tr>
					<tr>
						<td> 
							&nbsp;&nbsp; 备 注</td>
						<td>
						 </span><textarea name="REMARK" size="40"></textarea>
						</td>
					</tr>
					<tr>
						<td align="center"> 
							<input type="submit" value="注册" />
						</td>
					</tr>
					
				</tbody>
			</table>&nbsp; </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			
		</form>
	 <br><br></body>
</html>
