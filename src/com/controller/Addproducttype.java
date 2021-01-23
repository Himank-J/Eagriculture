package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.Producttype;

import modal.BLManager;

@WebServlet("/Addproducttype")
public class Addproducttype extends HttpServlet {
	private static final long serialVersionUID = 1L;
    BLManager bl=new BLManager();  
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type=request.getParameter("ptype");
		Producttype ptype=new Producttype();
		ptype.setProducttype(type);
		bl.addProductType(ptype);
		response.sendRedirect("Admin/addproducttype.jsp");
		
	}

}
