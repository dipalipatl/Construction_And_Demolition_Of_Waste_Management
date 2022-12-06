package com.rcpit.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateVehicle
 */
public class UpdateVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVehicle() {
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
		int number = Integer.parseInt(request.getParameter("number"));
		
Connection conn = ConnectionDB.connect();
        
        {
		try
		{
			PreparedStatement ps1 = conn.prepareStatement("Update vehicle set name=?,mobile=? where number=?");
			ps1.setString(1,name);
			ps1.setString(2,mobile);
			ps1.setInt(3,number);
		
			
	        int rs = ps1.executeUpdate();
	        if (rs>0)
	        {
	        	response.sendRedirect("update.html");
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
