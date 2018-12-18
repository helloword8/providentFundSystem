package com.gerenkaihu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class piliang_insert_servlet extends HttpServlet {

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
		piliangutil p=new piliangutil();
		List<GeRenKaiHu> l= p.loadGeRenKaiHu("d:/piliang.xls");
		GeRenKaiHuDao gd=new GeRenKaiHuDao();
		int i=0;
		for(GeRenKaiHu attribute : l) {
			GeRenKaiHu g=new GeRenKaiHu();
			g.setNAME(attribute.NAME);
			g.setNUMBER(attribute.NUMBER);
			g.setKIND(attribute.KIND);
			g.setBASENUMBER(attribute.BASENUMBER);
			gd.insert(g);
			i++;
			if(i%20==0){
				gd.getSession().flush();
				gd.getSession().clear();
			}
		}
	//	response.sendRedirect(")
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
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
