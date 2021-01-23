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
@WebServlet("/AddMachine")
public class AddMachine extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 try{  
		   
		   	    Machinery m= new Machinery()  ; 
		   	    BLManager bl=new BLManager();
		   	    
		   	    String mname=request.getParameter("mname");
		   		String enginehp=request.getParameter("enginehp");
		   		String ratedrpm=request.getParameter("ratedrpm");
		   		String gears=request.getParameter("gears");
		   		String speed=request.getParameter("speed");
		   		String fronttype=request.getParameter("fronttype");
		   		String reartype=request.getParameter("reartype");
		   		String liftcap=request.getParameter("liftcap");
		   		String fuelcap=request.getParameter("fuelcap");
		   		
		   		
		   		m.setMname(mname);
		   		m.setEnginehp(enginehp);
		   		m.setRatedrpm(ratedrpm);
		   		m.setGears(gears);
		   		m.setSpeed(speed);
		   		m.setFronttype(fronttype);
		   		m.setReartype(reartype);
		   		m.setLiftcap(liftcap);
		   		m.setFuelcap(fuelcap);
		   		
		   		Part file=request.getPart("image");
				InputStream filename=null;
				filename=file.getInputStream();
				 
				byte[] bytes=new byte[filename.available()];
				filename.read(bytes);
				  		
		   		for(byte b:bytes)
		   		{
		   			System.out.print(b);
		   		}
		   		
		   		m.setImage(bytes);	
		   		
		   		bl.insertmachine(m);
		   		response.sendRedirect("Admin/viewmachine.jsp");
		   		
		 }catch(Exception e) {System.out.println(e);}
	}
}
