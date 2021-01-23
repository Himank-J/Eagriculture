package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.BLManager;
import com.pojo.Admin;

/**
 * Servlet implementation class Admin_Login
 */
@WebServlet("/Admin_Login")
public class Admin_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");   
   	    
   		try{
   			
   			String username=request.getParameter("username");
   			String apassword=request.getParameter("apassword");
	   		
	   		Admin a=new Admin();
	   		BLManager bl=new BLManager();
	   		HttpSession httpSession=request.getSession();
	   		a.setUsername(username);
	   		a.setApassword(apassword);
	   		Admin a1=bl.searchByUsername(username);
	   		
	   		
			if(bl.isExistUsername(username) && bl.isExistaPassword(apassword) )
			{	
				httpSession.setAttribute("username", a1.getUsername() );
				httpSession.setAttribute("aname", a1.getAname() );
				httpSession.setAttribute("aid", a1.getAid());    
				response.sendRedirect("Admin/Home.jsp");
			}
			else
			{
				response.sendRedirect("Admin/adminlogin.jsp");
			}
	   	}catch (Exception e){ System.out.println(e);}
	}

}
