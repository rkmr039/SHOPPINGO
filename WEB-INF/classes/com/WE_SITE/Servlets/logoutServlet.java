package com.WE_SITE.Servlets;
import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.RequestDispatcher; 
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class logoutServlet extends HttpServlet
{  
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            /*response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("index.jsp").include(request, response);  
              
            HttpSession session=request.getSession();  
            session.invalidate();  
              
           // out.print("You are successfully logged out!");  
              
            out.close(); */

            response.setHeader("Cache-Control", "no-cache, no-store");
            response.setHeader("Pragma", "no-cache");
            //session.removeAttribute("id");
			HttpSession session=request.getSession(true);
            session.invalidate();
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
            //response.sendRedirect(request.getContextPath() + "/login.jsp");
        } 
} 