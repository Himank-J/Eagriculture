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

import modal.*;

@WebServlet("/Updatecart")
public class Updatecart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		int total=0;
		int id=Integer.parseInt(request.getParameter("id"));
		int qty=Integer.parseInt(request.getParameter("qty"));
		//Map<Product, Integer> product = (Map<Product, Integer>) session.getAttribute("product");
		for(Map.Entry<Product, Integer> map:GlobalMap.Cartvalue.entrySet())
		{
			if(map.getKey().getPid()==id)
			{
				total=map.getKey().getPrice()*qty;
				map.getKey().setTotalprice(total);
				GlobalMap.Cartvalue.put(map.getKey(), qty);
				/*if(name!=null)
				{
					cart.setTotprice(total);
					cart.setCquantity(qty);
					bl.updatecartitems(cart);
				}*/
			}
		}
		session.setAttribute("product", GlobalMap.Cartvalue);
		response.sendRedirect("ShowCart1.jsp");
	}
}