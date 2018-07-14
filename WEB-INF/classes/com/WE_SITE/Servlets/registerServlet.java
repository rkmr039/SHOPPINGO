package com.WE_SITE.Servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerServlet extends HttpServlet {

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         response.setContentType("text/html");  
            PrintWriter out = response.getWriter();  
            String connectionURL = "jdbc:mysql://localhost/test?useSSL=false";// test is the database  
            Connection connection;  
            try{  
              String name = request.getParameter("name"); 
              String email = request.getParameter ("email"); 
              String pass = request.getParameter("pass");  
              
              Class.forName("com.mysql.jdbc.Driver");  
              connection = DriverManager.getConnection(connectionURL, "root", "root12345");  
              PreparedStatement pst = connection.prepareStatement("insert into user(name,email,pass) values(?,?,?)");
              pst.setString(1,name);  
              pst.setString(2,email);
              pst.setString(3,pass);

              
              int i = pst.executeUpdate();  
              if(i!=0){  
                out.println("<br>Record has been inserted");  
                   
           
              }  
              else{  
                out.println("<br>Failed to insert the data...please try again later");  
               }  
            }  
            catch (Exception e){  
              out.println(e);  
            }  
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        } 
}