package com.controller;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession; 

@WebServlet("/Logout1")
public class Logout1 extends HttpServlet 
{  
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
        {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("login.jsp").include(request, response);  
              
            HttpSession session=request.getSession();  
            session.invalidate();  
            
            out.print("<html><body>");  
            out.print("<b style='font-size:18px;color:red;position:relative;bottom:140px;left:470px;'>Your Password Has Been Successfully Changed</b><br>"); 
            out.println("<b style='font-size:18px;color:red;position:relative;bottom:130px;left:580px;'>Please Login Again</b>");  
            out.print("</body></html>");
                            
            out.close();  
        }  
}