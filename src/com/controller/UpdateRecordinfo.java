package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.*;
import modal.BLManager;

/**
 * Servlet implementation class updateInfo
 */
@WebServlet("/UpdateRecordinfo")
public class UpdateRecordinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Register r=new Register();
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String pincode=request.getParameter("pincode");
   		
   		r.setId(id);
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
		bl.updateRecord(r);
		response.sendRedirect("myaccount.jsp");
	}
}
