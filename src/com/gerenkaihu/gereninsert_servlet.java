package com.gerenkaihu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class gereninsert_servlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String ACCNUM = request.getParameter("ACCNUM");
		String UNITACCNUM = request.getParameter("UNITACCNUM");// 单位账号
		String UNITACCNAME = request.getParameter("UNITACCNAME");// 单位名称
		String NAME = request.getParameter("NAME");// 姓名
		String KIND = request.getParameter("KIND");// 证件类型
		String NUMBER = request.getParameter("NUMBER");// 证件号码

		GeRenKaiHuDao gd = new GeRenKaiHuDao();
		GeRenKaiHu grk = gd.findById(Integer.parseInt(ACCNUM));
		grk.setKIND(KIND);
		grk.setNAME(NAME);
		grk.setNUMBER(NUMBER);
		grk.setUNITACCNAME(UNITACCNAME);
		grk.setUNITACCNUM(UNITACCNUM);
		gd.update(grk);
		response.sendRedirect("geren_update/gerenupdate_success.jsp");
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doGet(request, response);
	}

}
