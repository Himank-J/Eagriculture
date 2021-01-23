package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.*;
import modal.BLManager;

/**
 * Servlet implementation class updateRecord
 */
@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BLManager bl=new BLManager();
		int pid=Integer.parseInt(request.getParameter("id"));
		Product p=bl.getRecordByPid(pid);
		
		HttpSession s=request.getSession();
		s.setAttribute("list", p);
		response.sendRedirect("Admin/updateproduct.jsp");
	}

}
