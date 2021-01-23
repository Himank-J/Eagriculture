package com.controller;

import java.io.IOException;
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
@WebServlet("/SoilTest")
public class SoilTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");   
   	    
   		try{
	   		String phone=request.getParameter("phone");
	   		String address=request.getParameter("address");
	   		String soiltype=request.getParameter("soiltype");
	   		String sdate=request.getParameter("soildate");
	   		Date soildate=new SimpleDateFormat("yyyy/MM/dd").parse(sdate);
	   		
	   		Soiltest s1= new Soiltest();
	   		
	   		BLManager bl=new BLManager();
	   		HttpSession httpSession=request.getSession();
	   		
	   		String name=(String)httpSession.getAttribute("name");
	   			   		
	   		if(name==null)
	   		{
	   			response.sendRedirect("errsoiltest.jsp");
	   		}
	   		else
	   		{
	   			int id=(int) httpSession.getAttribute("id");
		   		Register register=bl.getRecordById(id);
	   			s1.setPhone(phone);
		   		s1.setAddress(address);
		   		s1.setSoiltype(soiltype);
		   		s1.setSoildate(soildate);
	   			s1.setRegister(register);
	   			bl.insertsoil(s1);
	   			response.sendRedirect("successs_soiltest.jsp");
	   		}
	   	}catch (Exception e){
	   		response.sendRedirect("login.jsp");
	   		System.out.println(e);}
  }
}