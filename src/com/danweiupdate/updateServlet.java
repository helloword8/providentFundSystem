package com.danweiupdate;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.danweikaihu.DanWeiKaiHu;
import com.danweikaihu.DanWeiKaiHuDao;


public class updateServlet extends HttpServlet {

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
		String UNITACCNAME=request.getParameter("UNITACCNAME");//��λ����
		String UNITADDR=request.getParameter("UNITADDR");//��λ��ַ
		String ORGCODE=request.getParameter("ORGCODE");//��֯��������
		String UNITCHAR=request.getParameter("UNITCHAR");//��λ���
		String UNITKIND=request.getParameter("UNITKIND");//��ҵ���� 
		String SALARYDATE=request.getParameter("SALARYDATE");//��н����
		String UNITPHONE=request.getParameter("UNITPHONE");//��ϵ�绰
		String UNITLINKMAN=request.getParameter("UNITLINKMAN");//��λ��ϵ��
		String UNITAGENTPAPNO=request.getParameter("UNITAGENTPAPNO");//���������֤����
		String REMARK=request.getParameter("REMARK");//��ע
		DanWeiKaiHuDao dw=new DanWeiKaiHuDao();
		DanWeiKaiHu dwkh=dw.findById(Integer.parseInt(request.getParameter("UNITACCNUM")));
		dwkh.setUNITACCNAME(UNITACCNAME);
		dwkh.setUNITADDR(UNITADDR);
		dwkh.setORGCODE(ORGCODE);
		dwkh.setUNITCHAR(UNITCHAR.charAt(0));
		dwkh.setUNITKIND(UNITKIND);
		dwkh.setSALARYDATE(SALARYDATE);
		dwkh.setUNITPHONE(UNITPHONE);
		dwkh.setUNITLINKMAN(UNITLINKMAN);
		dwkh.setUNITAGENTPAPNO(UNITAGENTPAPNO);
		dwkh.setREMARK(REMARK);
		dw.update(dwkh);
		response.sendRedirect("danwei_update/updateSuccess.jsp");
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

		this.doGet(request, response);
	}

}
