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
@WebServlet("/UpdateProductinfo")
public class UpdateProductinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Product p=new Product();
		BLManager bl= new BLManager();
		
		int pid=Integer.parseInt(request.getParameter("id"));
		String pname=request.getParameter("pname");
		String pdescription=request.getParameter("pdescription");
		int price=Integer.parseInt(request.getParameter("price"));
		int totquantity=Integer.parseInt(request.getParameter("totquantity"));
		String type=request.getParameter("type");
		Part file=request.getPart("image");
		InputStream filename=null;
		filename=file.getInputStream();
		
		Producttype producttype=bl.getProductBytype(type);
		 
		byte[] bytes=new byte[filename.available()];
		filename.read(bytes);
		  		
   		for(byte b:bytes)
   		{
   			System.out.print(b);
   		}
   		
   		p.setPid(pid);
   		p.setPname(pname);
   		p.setPdescription(pdescription);
   		p.setPrice(price);
   		p.setTotquantity(totquantity);
   		p.setProducttype(producttype);
   		p.setImage(bytes);
		p.setTotalprice(price);
		bl.updateProduct(p);
		response.sendRedirect("Admin/viewproduct.jsp");
	}
}
