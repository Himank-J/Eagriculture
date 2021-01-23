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

import com.pojo.Register;

import modal.BLManager;

/**
 * Servlet implementation class First
 */
@WebServlet("/First")
public class First extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");   
   	    
   		try{
   			
   			String name=request.getParameter("name");
   			String password=request.getParameter("password");
	   		String email=request.getParameter("email");
	   		String phone=request.getParameter("phone");
	   		String gender=request.getParameter("gender");
	   		String address=request.getParameter("address");
	   		String state=request.getParameter("state");
	   		String city=request.getParameter("city");
	   		String pincode=request.getParameter("pincode");
	   		
	   		Register r= new Register();
	   		
	   		r.setName(name);
	   		r.setEmail(email);
	   		r.setPassword(password);
	   		r.setPhone(phone);
	   		r.setGender(gender);
	   		r.setAddress(address);
	   		r.setState(state);
	   		r.setCity(city);
	   		r.setPincode(pincode);
	   		
	   		BLManager bl=new BLManager();
			if(bl.isExistEmail(email))
			{	
				RequestDispatcher rd=request.getRequestDispatcher("err_registration.jsp");  
		        rd.forward(request,response);  		 
			}
			else if(bl.isExistPhone(phone))
			{
				RequestDispatcher rd=request.getRequestDispatcher("err_registration.jsp");  
		        rd.forward(request,response);
			}
			else
			{
				bl.insertdata(r);
				RequestDispatcher rd=request.getRequestDispatcher("success_registration.jsp");  
		        rd.forward(request,response);  		
			}
	   	}catch (Exception e){System.out.println(e);
	   		response.sendRedirect("registration.jsp");
   	}
  }
}