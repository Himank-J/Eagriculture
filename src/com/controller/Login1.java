package com.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.BLManager;
import modal.GlobalMap;

import com.pojo.Cart;
import com.pojo.Product;
import com.pojo.Register;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login1")
public class Login1 extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");   
   	    
   		try{
   			
   			String email=request.getParameter("email");
   			String password=request.getParameter("password");
	   		
	   		Register r= new Register();
	   		
	   		r.setEmail(email);
	   		r.setPassword(password);
	   		
	   		BLManager bl=new BLManager();
	   		HttpSession httpSession=request.getSession();
	   		Register r2=bl.searchByEmail(email);
	   		
			if(bl.isExistEmail(email) && bl.isExistPassword(password) )
			{	
					httpSession.setAttribute("email", r2.getEmail());
					httpSession.setAttribute("name", r2.getName());
					httpSession.setAttribute("id", r2.getId());
					if(GlobalMap.Cartvalue==null)
					{
						Register reg1=bl.getRecordById(r2.getId());
						List<Cart> product1=bl.getcartByid(reg1);
						for(Cart c:product1)
						{
							Product pp=bl.getRecordByPid(c.getProduct().getPid());
							GlobalMap.Cartvalue.put(pp, c.getCquantity());
						}
						response.sendRedirect("index.jsp");
					}
					else
					{
						Register reg1=bl.getRecordById(r2.getId());
						List<Cart> product1=bl.getcartByid(reg1);
						for(Cart c:product1)
						{
							Product pp=bl.getRecordByPid(c.getProduct().getPid());
							GlobalMap.Cartvalue.put(pp, c.getCquantity());
						}
						for(Map.Entry<Product,Integer>m: GlobalMap.Cartvalue.entrySet())
						{
							Register reg=bl.getRecordById((Integer)httpSession.getAttribute("id"));
							Cart ca= new Cart();
							ca.setProduct(m.getKey());
							ca.setRegister(reg);
							ca.setCquantity(m.getValue());
							ca.setTotprice(m.getKey().getPrice()*m.getValue());
							if(bl.isexistproduct(reg,m.getKey()))
							{
								
							}
							else
							{
								bl.insertcart(ca);
								//response.sendRedirect("ShowCart1.jsp");
							}
						}		
					}
					response.sendRedirect("index.jsp");
				}
			else
			{
				response.sendRedirect("err_login.jsp");  		
			}
	   	}catch (Exception e){System.out.println(e);
	   	}
	}
}