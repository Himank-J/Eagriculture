package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.*;

import modal.BLManager;

/**
 * Servlet implementation class First
 */
@WebServlet("/Contacts")
public class Contacts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");   
   	    
   		try{
   			
   			String cname=request.getParameter("cname");
   			String cemail=request.getParameter("cemail");
	   		String comment=request.getParameter("comment");
	   		
	   		Contact c= new Contact();
	   		
	   		c.setCname(cname);
	   		c.setCemail(cemail);
	   		c.setComment(comment);
	   		
	   		BLManager bl=new BLManager();
		
			bl.insertfeedback(c);
			response.sendRedirect("success_contact.jsp");

	   	}catch (Exception e){System.out.println(e);
	   		response.sendRedirect("contact.jsp");
   	}
  }
}