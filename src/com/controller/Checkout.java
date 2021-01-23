package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.pojo.*;

import modal.*;

/**
 * Servlet implementation class Checkout
 */
@WebServlet("/Checkout")
public class Checkout extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();  
		HttpSession httpSession=request.getSession();
		String name=(String)httpSession.getAttribute("name");
		BLManager bl=new BLManager();
		
		if(name==null)
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			out.println("<html><head>");
			out.println("<script  src=\"js/function.js\"></script>");
			out.println("</html></head>");
		}
	}
}