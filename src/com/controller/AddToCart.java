package com.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.*;

import modal.BLManager;
import modal.GlobalMap;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BLManager bl = new BLManager();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		HttpSession httpSession = request.getSession();

		int size = 0;
		
		int id = Integer.parseInt(request.getParameter("id"));
		Product p = bl.getRecordByPid(id);
		
		boolean flag=false;
		
		int pid=(Integer) httpSession.getAttribute("pid");
		
		for(Map.Entry<Product,Integer> m:GlobalMap.Cartvalue.entrySet())
		{
				if(m.getKey().getPid()==id)
				{
					flag=true;
				}
		}
		if(flag==false) 
		{ 
				GlobalMap.Cartvalue.put(p, 1);
				size = GlobalMap.Cartvalue.size();
				System.out.println("add to cart"+size);
				httpSession.setAttribute("size", size);
				httpSession.setAttribute("product", GlobalMap.Cartvalue);
		}		
		response.sendRedirect("DisplayProduct.jsp?id="+pid);
	}
}