package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;
import com.pojo.*;

import modal.BLManager;
import modal.GlobalMap;

/**
 * Servlet implementation class First
 */
@WebServlet("/PurchaseP")
public class PurchaseP extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//response.setContentType("text/html");   
   	    
   		try{
	   		String phone=request.getParameter("phone");
	   		String address=request.getParameter("address");
	   		String pdate=request.getParameter("purdate");
	   		Date purdate=new SimpleDateFormat("yyyy/MM/dd").parse(pdate);
	   		
	   		Purchase pur= new Purchase();
	   		
	   		BLManager bl=new BLManager();
	   		HttpSession httpSession=request.getSession();
	   		double grandtotal=(double)httpSession.getAttribute("grandtotal");
	   		System.out.println("purchase Total"+grandtotal);
	   		Register register=bl.getRecordById((Integer)httpSession.getAttribute("id"));		   	
	   		int totalstock=0;
	   		
	   		for(Map.Entry<Product,Integer>m: GlobalMap.Cartvalue.entrySet())
			{		   		
		   		pur.setPhone(phone);
		   		pur.setAddress(address);
		   		pur.setPurdate(purdate);
		   		pur.setRegister(register);
		   		pur.setProduct(m.getKey());
		   		pur.setPquantity(m.getValue());
		   		pur.setTotprice(m.getKey().getPrice()*m.getValue());
				bl.insertorder(pur);
				
				Product p=bl.getRecordByPid(m.getKey().getPid());
				System.out.println("tanu="+p.getPid());
				totalstock= (p.getTotquantity()-m.getValue());
				p.setTotquantity(totalstock);
				System.out.println(p.getTotquantity());
				bl.updateProduct(p);
				System.out.println("updated product stock");
			}
	   		List<Cart> c=bl.getcartByid(register);
	   		
	   		for(Cart cart: c)
	   		{
	   			bl.deletecartItems(cart);
	   			System.out.println("deleted Product from cart");
	   		}	
	   		GlobalMap.Cartvalue.clear();
	   		
	   	}catch (Exception e){System.out.println(e);}
   		RequestDispatcher rd=request.getRequestDispatcher("success_order.jsp");
   		rd.forward(request, response);
	}
}