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
@WebServlet("/Login")
public class Login extends HttpServlet 
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
		   			Register reg1=bl.getRecordById(r2.getId());
		    		httpSession.setAttribute("email", r2.getEmail());
					httpSession.setAttribute("name", r2.getName());
					httpSession.setAttribute("id", r2.getId());
					
					System.out.println("Shital"+r2.getId());
					Product pro=new Product();
					System.out.println("loginpro" +pro.toString());
															
					if(GlobalMap.Cartvalue==null)
					{
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
						List<Cart> product1=bl.getcartByid(reg1);
						for(Cart c:product1)
						{
							Product pp=bl.getRecordByPid(c.getProduct().getPid());
							GlobalMap.Cartvalue.put(pp, c.getCquantity());
						}
						for(Map.Entry<Product,Integer>m: GlobalMap.Cartvalue.entrySet())
						{
							System.out.println("id is" +r2.getId());
							Cart ca= new Cart();
							ca.setProduct(m.getKey());
							ca.setRegister(reg1);
							ca.setCquantity(m.getValue());
							ca.setTotprice(m.getKey().getPrice()*m.getValue());
							
							System.out.println("login" +reg1.toString());
							System.out.println("loginp " +reg1.getId()+" "+m.getKey().toString());
							/*
							if(bl.isexistproduct(reg1,m.getKey()))
							{
								System.out.println("Tanusha1");
							}
							else
							{*/								
									bl.insertcart(ca);
									System.out.println("Himank");
							/*}*/
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