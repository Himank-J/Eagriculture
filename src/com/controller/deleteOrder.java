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
@WebServlet("/deleteOrder")
public class deleteOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BLManager bl=new BLManager();
		int purid=Integer.parseInt(request.getParameter("id"));
		Purchase pur=bl.getRecordByPurid(purid);
		bl.deleteOrder(pur);
		response.sendRedirect("Admin/vieworders.jsp");
	}

}
