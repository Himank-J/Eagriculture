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
 * Servlet implementation class updateProducttype
 */
@WebServlet("/UpdateProducttype")
public class UpdateProducttype extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BLManager bl=new BLManager();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int tid=Integer.parseInt(request.getParameter("id"));
		Producttype pt=bl.getRecordByTid(tid);
		
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("list", pt);
		response.sendRedirect("Admin/updateproducttype.jsp");
	}
}
