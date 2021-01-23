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
@WebServlet("/UpdateRecord")
public class UpdateRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BLManager bl=new BLManager();
		int id=Integer.parseInt(request.getParameter("id"));
		Register r=bl.getRecordById(id);
		
		HttpSession s=request.getSession();
		s.setAttribute("list", r);
		response.sendRedirect("updaterecord.jsp");
	}

}
