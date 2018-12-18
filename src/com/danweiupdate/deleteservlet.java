package com.danweiupdate;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.danweikaihu.DanWeiKaiHu;
import com.danweikaihu.DanWeiKaiHuDao;

public class deleteservlet extends HttpServlet {

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
		int a=Integer.parseInt(request.getParameter("a"));
		DanWeiKaiHuDao d=new DanWeiKaiHuDao();
		if(d.findById(a)!=null)
		{
			d.delete(d.findById(a));
			response.sendRedirect("geren_update/deletesuccess.jsp");
		}
		else
			response.sendRedirect("geren_update/gerendelete_default.jsp");
		
		
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
	doGet(request, response);
	}

}
