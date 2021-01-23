package com.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.*;

import modal.BLManager;
import modal.GlobalMap;

@WebServlet("/deletecart")
public class deletecart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BLManager bl=new BLManager();
	public deletecart() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		try{
			HttpSession httpSession=request.getSession();
		String name=(String)httpSession.getAttribute("name");
		int id = Integer.parseInt(request.getParameter("id"));
		for (Map.Entry<Product, Integer> m : GlobalMap.Cartvalue.entrySet()) {
			if (m.getKey().getPid() == id) 
			{
				GlobalMap.Cartvalue.remove(m.getKey());
				if(name!=null)
				{
					Cart cart=bl.searchByPid(m.getKey());
					bl.deletecartItems(cart);
					//GlobalMap.Cartvalue.remove(m.getKey());
				}
			}
		}
		response.sendRedirect("ShowCart1.jsp");
		}catch (Exception e) {
			// TODO: handle exception
			response.sendRedirect("ShowCart1.jsp");
		}
	}
}