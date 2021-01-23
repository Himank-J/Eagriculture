package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pojo.*;
import java.util.*;
import java.text.*;
import modal.*;

/**
 * Servlet implementation class Cancelorder
 */
@WebServlet("/Cancelorder")
public class Cancelorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter(); 
		BLManager bl=new BLManager();
		int totalstock=0;
		Date currentDate= new Date();
		System.out.println(currentDate);
		int purid=Integer.parseInt(request.getParameter("id"));
		Purchase pur=bl.getRecordByPurid(purid);
		System.out.println(pur.getPurdate());
		Date cancelDate = addDays(pur.getPurdate(), 6);
		System.out.println(cancelDate);
		if(currentDate.before(cancelDate))
		{
			bl.deleteOrder(pur);
			Product p=bl.getRecordByPid(pur.getProduct().getPid());
			System.out.println("himank="+p.getPid());
			totalstock= (pur.getPquantity()+pur.getProduct().getTotquantity());
			p.setTotquantity(totalstock);
			System.out.println(p.getTotquantity());
			bl.updateProduct(p);
			
			out.println("<html><head>");
			out.println("<script  src=\"js/function1.js\"></script>");
			out.println("</html></head>");
		}
		else
		{
			out.println("<html><head>");
			out.println("<script  src=\"js/function2.js\"></script>");
			out.println("</html></head>");
		}
	}
	public static Date addDays(Date d, int days)
	{
	    d.setTime(d.getTime() + days * 1000 * 60 * 60 * 24);
	    return d;
	}
}
