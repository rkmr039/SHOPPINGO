package com.WE_SITE.Servlets;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class loginServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
        PrintWriter out = response.getWriter();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test?useSSL=false","root","root12345");
			PreparedStatement ps = conn.prepareStatement("select name, pass from user where name=? and pass=?");
			ps.setString(1, name);
			ps.setString(2, pass);
 			
			ResultSet rs = ps.executeQuery();
			 
			if(rs.next())
			{
				//int id = rs.getInt("id"); 
				HttpSession session=request.getSession(true);
				session.setAttribute("name",name);
				//response.sendRedirect("home.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			}
			else response.sendRedirect("login.jsp");
		}  
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
}