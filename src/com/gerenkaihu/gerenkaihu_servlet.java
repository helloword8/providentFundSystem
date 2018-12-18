package com.gerenkaihu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class gerenkaihu_servlet extends HttpServlet {

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
		String UNITACCNUM=request.getParameter("UNITACCNUM");//单位账号
		String UNITACCNAME=request.getParameter("UNITACCNAME");//单位名称
		double UNITPROP=Double.parseDouble(request.getParameter("UNITPROP"));//单位比例
		double PERPROP=Double.parseDouble(request.getParameter("INDIPROP"));//个人比例	
		String NAME=request.getParameter("NAME");//姓名
		String KIND=request.getParameter("KIND");//证件类型
		String NUMBER=request.getParameter("NUMBER");//证件号码
		double BASENUMBER=Double.parseDouble(request.getParameter("BASENUMBER"));//缓存基数
		GeRenKaiHu grk=new GeRenKaiHu();
		grk.setBASENUMBER(BASENUMBER);
		grk.setINDIPROP(PERPROP);
		grk.setKIND(KIND);
		grk.setNAME(NAME);
		grk.setNUMBER(NUMBER);
		grk.setUNITACCNAME(UNITACCNAME);
		grk.setUNITACCNUM(UNITACCNUM);
		grk.setUNITPROP(UNITPROP);
		GeRenKaiHuDao gd=new GeRenKaiHuDao();
		gd.insert(grk);
		response.sendRedirect("gerenkaihu_success.jsp");
		
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

		response.setContentType("text/html");
		doGet(request,response);
	}

}
