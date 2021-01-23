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
 * Servlet implementation class First
 */
@MultipartConfig(maxFileSize=10*1024*1024)
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 try{  
		   
		   	    Product p= new Product() ; 
		   	    BLManager bl=new BLManager();
		   	    
		   	    String pname=request.getParameter("pname");
		   		String pdescription=request.getParameter("pdescription");
		   		int price=Integer.parseInt(request.getParameter("price"));
		   		int totquantity=Integer.parseInt(request.getParameter("totquantity"));
		   		String type=request.getParameter("type");
		   		
		   		Producttype producttype=bl.getProductBytype(type);
		   		
		   		p.setPname(pname);
		   		p.setPdescription(pdescription);
		   		p.setPrice(price);
		   		p.setTotquantity(totquantity);
		   		p.setProducttype(producttype);
		   		p.setTotalprice(price);		   		
		   		Part file=request.getPart("image");
				InputStream filename=null;
				filename=file.getInputStream();
				 
				byte[] bytes=new byte[filename.available()];
				filename.read(bytes);
				  		
		   		for(byte b:bytes)
		   		{
		   			System.out.print(b);
		   		}
		   		
		   		p.setImage(bytes);	
		   		
		   		bl.insertproduct(p);
		   		response.sendRedirect("Admin/viewproduct.jsp");
		   		
		 }catch(Exception e) {System.out.println(e);}
		 
	   		
	}
}
