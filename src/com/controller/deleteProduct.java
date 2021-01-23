package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modal.BLManager;
import com.pojo.*;

/**
 * Servlet implementation class deleteRecord
 */
@WebServlet("/deleteProduct")
public class deleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BLManager bl=new BLManager();
		int pid=Integer.parseInt(request.getParameter("id"));
		Product p=bl.getRecordByPid(pid);
		bl.deleteProduct(p);
		response.sendRedirect("Admin/viewproduct.jsp");
	}

}
