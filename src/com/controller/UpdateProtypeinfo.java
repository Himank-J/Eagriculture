package com.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.pojo.*;
import modal.BLManager;

/**
 * Servlet implementation class updateInfo
 */
@MultipartConfig(maxFileSize=10*1024*1024)
@WebServlet("/UpdateProtypeinfo")
public class UpdateProtypeinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Producttype pt=new Producttype();
		BLManager bl=new BLManager();
		
		int tid=Integer.parseInt(request.getParameter("tid"));
		String producttype=request.getParameter("producttype");
		
		pt.setTid(tid);
		pt.setProducttype(producttype);
		
		bl.updateProducttype(pt);
		response.sendRedirect("Admin/addproducttype.jsp");
	}
}
