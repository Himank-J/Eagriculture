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

import com.pojo.Machinery;

import modal.BLManager;

@MultipartConfig(maxFileSize=10*1024*1024,maxRequestSize=10*1024*1024,fileSizeThreshold=10*1024*1024)
@WebServlet("/UpadteMachineInfo")
public class UpadteMachineInfo extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Machinery m=new Machinery();
		
		int mid=Integer.parseInt(request.getParameter("id"));
		String mname=request.getParameter("mname");
	   	String enginehp=request.getParameter("enginehp");
	   	String ratedrpm=request.getParameter("ratedrpm");
	   	String gears=request.getParameter("gears");
	   	String speed=request.getParameter("speed");
	   	String fronttype=request.getParameter("fronttype");
	   	String reartype=request.getParameter("reartype");
	   	String liftcap=request.getParameter("liftcap");
	   	String fuelcap=request.getParameter("fuelcap");
	   		
	   	m.setMid(mid);
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
		  		
		m.setImage(bytes);
   		
   		BLManager bl=new BLManager();
   		bl.updateMachine(m);
   		response.sendRedirect("Admin/viewmachine.jsp");
	}

}
