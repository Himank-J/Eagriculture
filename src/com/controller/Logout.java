package com.controller;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

import modal.GlobalMap; 

@WebServlet("/Logout")
public class Logout extends HttpServlet 
{  
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
        {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
            GlobalMap.Cartvalue.clear();
            
              
            HttpSession session=request.getSession();  
            session.invalidate(); 
            
            request.getRequestDispatcher("login.jsp").include(request, response);  
            
            out.print("<html><body>");  
            out.print("<b style='font-size:18px;color:red;position:relative;bottom:120px;left:520px;'>You have successfully logged out</b>");  
            out.print("</body></html>");
                            
            out.close();  
        }  
}  
