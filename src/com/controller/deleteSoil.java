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
@WebServlet("/deleteSoil")
public class deleteSoil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BLManager bl=new BLManager();
		int stid=Integer.parseInt(request.getParameter("id"));
		Soiltest s1=bl.getRecordByStid(stid);
		bl.deleteSoil(s1);
		response.sendRedirect("Admin/viewsoiltest.jsp");
	}

}
