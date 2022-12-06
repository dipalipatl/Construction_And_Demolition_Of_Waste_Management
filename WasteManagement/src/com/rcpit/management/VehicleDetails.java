package com.rcpit.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleDetails
 */
public class VehicleDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleDetails() {
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
		
		int number = Integer.parseInt(request.getParameter("number"));
		String name= request.getParameter("name");
		String mobile= request.getParameter("mobile");
		String latitude= request.getParameter("latitude");
		String longitude= request.getParameter("longitude");
		
		
        
		
        Connection conn = ConnectionDB.connect();
        
        {
		try
		{
			PreparedStatement ps1 = conn.prepareStatement("insert into vehicle values(?,?,?,?,?)");
			ps1.setInt(1,number);
			ps1.setString(2,name);
			ps1.setString(3,mobile);
			ps1.setString(4,latitude);
			ps1.setString(5,longitude);
			
	        int rs = ps1.executeUpdate();
	        if (rs>0)
	        {
	        	response.sendRedirect("vehiclereg.html");
	        }
	        else
	        {
	        	response.sendRedirect("signin.html");
	        }

		    
		    }
		    catch(Exception e)
		    {
			        System.out.println(e);
		    }
        }
		
	}

}
