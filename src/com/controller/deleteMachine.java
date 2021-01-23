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
@WebServlet("/deleteMachine")
public class deleteMachine extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BLManager bl=new BLManager();
		int mid=Integer.parseInt(request.getParameter("id"));
		Machinery m=bl.getRecordByMid(mid);
		bl.deleteMachine(m);
		response.sendRedirect("Admin/viewmachine.jsp");
	}

}
