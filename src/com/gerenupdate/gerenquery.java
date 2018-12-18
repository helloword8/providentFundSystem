package com.gerenupdate;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.danweikaihu.DanWeiKaiHu;
import com.danweikaihu.DanWeiKaiHuDao;
import com.gerenkaihu.GeRenKaiHu;
import com.gerenkaihu.GeRenKaiHuDao;

public class gerenquery extends HttpServlet {

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
		GeRenKaiHuDao d=new GeRenKaiHuDao();
		GeRenKaiHu grk=d.findById(Integer.parseInt(request.getParameter("a")));
		HttpSession session=request.getSession();
		if(grk!=null)
		{
			session.setAttribute("grk",grk);
			response.sendRedirect("geren_update/gerenquery_out.jsp");
		}
		else
			response.sendRedirect("geren_update/query_default.jsp");
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
