package com.rcpit.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.management.ConnectionDB;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String name= request.getParameter("name");
		String mobile= request.getParameter("mobile");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		String profession= request.getParameter("profession");
		String address= request.getParameter("address");
		
        
		
        Connection conn = ConnectionDB.connect();
        
        {
		try
		{
			PreparedStatement ps1 = conn.prepareStatement("insert into signup values(?,?,?,?,?,?)");
			ps1.setString(1,name);
			ps1.setString(2,mobile);
			ps1.setString(3,email);
			ps1.setString(4,password);
			ps1.setString(5,profession);
			ps1.setString(6,address);
	        int rs = ps1.executeUpdate();
	        if (rs>0)
	        {
	        	response.sendRedirect("userlogin.html");
	        }
	        else
	        {
	        	response.sendRedirect("errorpage.html");
	        }

		    
		    }
		    catch(Exception e)
		    {
			        System.out.println(e);
		    }
        }
		
	        }
	

	}


