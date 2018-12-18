package com.danweikaihu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class insertServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String UNITACCNAME=request.getParameter("UNITACCNAME");//单位名称
		String UNITADDR=request.getParameter("UNITADDR");//单位地址
		String ORGCODE=request.getParameter("ORGCODE");//组织机构代码
		String UNITCHAR=request.getParameter("UNITCHAR");//单位类别
		String UNITKIND=request.getParameter("UNITKIND");//企业类型 
		String SALARYDATE=request.getParameter("SALARYDATE");//发薪日期
		String UNITPHONE=request.getParameter("UNITPHONE");//联系电话
		String UNITLINKMAN=request.getParameter("UNITLINKMAN");//单位联系人
		String UNITAGENTPAPNO=request.getParameter("UNITAGENTPAPNO");//经办人身份证号码
		String UNITPROP=request.getParameter("UNITPROP");//单位比例
		String PERPROP=request.getParameter("PERPROP");//个人比例
		String REMARK=request.getParameter("REMARK");//备注
		DanWeiKaiHu dwkh=new DanWeiKaiHu();
		DanWeiKaiHuDao dw=new DanWeiKaiHuDao();
		dwkh.setUNITACCNAME(UNITACCNAME);
		dwkh.setUNITADDR(UNITADDR);
		dwkh.setORGCODE(ORGCODE);
		dwkh.setUNITCHAR(UNITCHAR.charAt(0));
		dwkh.setUNITKIND(UNITKIND);
		dwkh.setSALARYDATE(SALARYDATE);
		dwkh.setUNITPHONE(UNITPHONE);
		dwkh.setUNITLINKMAN(UNITLINKMAN);
		dwkh.setUNITAGENTPAPNO(UNITAGENTPAPNO);
		dwkh.setUNITPROP(Float.parseFloat(UNITPROP));
		dwkh.setPERPROP(Float.parseFloat(PERPROP));
		dwkh.setREMARK(REMARK);
		dw.insert(dwkh);
		
		response.sendRedirect("danweikaihu_success.jsp");
	}

	/**   
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
	}

}
