package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modal.BLManager;
import com.pojo.Register;

/**
 * Servlet implementation class deleteRecord
 */
@WebServlet("/deleteRecord")
public class deleteRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BLManager bl=new BLManager();
		int id=Integer.parseInt(request.getParameter("id"));
		Register r=bl.getRecordById(id);
		bl.deleteRecord(r);
		response.sendRedirect("Admin/view.jsp");
	}

}
