package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.Machinery;

import modal.BLManager;


@WebServlet("/UpdateMachine")
public class UpdateMachine extends HttpServlet {
	private static final long serialVersionUID = 1L;
    BLManager bl=new BLManager();   
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		int mid=Integer.parseInt(request.getParameter("id"));
		Machinery m=bl.getRecordByMid(mid);
		
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("list", m);
		response.sendRedirect("Admin/updatemachine.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
