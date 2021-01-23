package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;
import com.pojo.*;

import modal.BLManager;

/**
 * Servlet implementation class First
 */
@WebServlet("/DemoM")
public class DemoM extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");   
		PrintWriter out=response.getWriter(); 
   	    
   		try{
	   		String phone=request.getParameter("phone");
	   		String address=request.getParameter("address");
	   		String ddate=request.getParameter("demodate");
	   		Date demodate=new SimpleDateFormat("yyyy/MM/dd").parse(ddate);
	   		
	   		Demo d= new Demo();
	   		
	   		BLManager bl=new BLManager();
	   		HttpSession httpSession=request.getSession();
	   		
	   		String name=(String)httpSession.getAttribute("name");
	   			   		
	   		if(name==null)
	   		{
	   			response.sendRedirect("login.jsp");
	   		}
	   		else 
	   		{
	   			int id=(int) httpSession.getAttribute("id");
	   			Register register=bl.getRecordById(id);
				Machinery m= (Machinery) httpSession.getAttribute("Machine");
				Machinery machinery=bl.getRecordByMid(m.getMid());
	   			
	   			d.setPhone(phone);
				d.setAddress(address);
				d.setDemodate(demodate);
				d.setRegister(register);
				d.setMachinery(machinery);
			   	bl.insertdemo(d);
			   		
			   	out.println("<html><head>");
				out.println("<script  src=\"js/functiond.js\"></script>");
				out.println("</html></head>");
	   		}
	   	}catch (Exception e){System.out.println(e);}
	}
}